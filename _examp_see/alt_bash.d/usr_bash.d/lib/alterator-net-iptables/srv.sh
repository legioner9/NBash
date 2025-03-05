SERVICEDIR="${SERVICEDIR:-/etc/alterator/net-iptables}"
. shell-error

regex_p1='[0-9]\+\(-[0-9]\+\)\?'
regex_p2="[a-z]\+[46]\?:\($regex_p1\)\?"

test_portrange(){
  local prange="${1:-}"
  echo "$prange" | grep -q "^[0-9]\+\(:[0-9]\+\)\?\$" ||
    fatal "`_ "Error: bad port or port range"`: \"$prange\""
  local p1="${prange%:*}"
  local p2="${prange#*:}"
  [ "$p1" = "$prange" -o "$(($p2-$p1 > 0))" = "1" ] ||
    fatal "`_ "Error: bad port or port range"`: \"$prange\""
}

# srv_expand -- expand service string using desktop.files
srv_expand(){
  local name=
  while read name; do
    [ -n "$name" ] || continue
    if [ "$name" = "icmp:" -o "$name" = "icmpv6:" ]; then
      srv_port2rule "$name"
    elif echo "$name" | grep -q "^$regex_p2\$"; then
      srv_port2rule "$name"
    elif echo "$name" | grep -q "^$regex_p1\$"; then
      srv_port2rule "tcp:$name"
      srv_port2rule "udp:$name"
    else
      local srv_file="$SERVICEDIR/${name##/}.desktop"
      [ -s "$srv_file" ] || fatal "`_ "Error: unknown service"` \"$name\"."
      alterator-dump-desktop -v out=X-Alterator-Port "$srv_file" |\
                   tr ';' '\n' |
      while read pp; do
        echo $pp | grep -q "^$regex_p2\$" ||\
          fatal "`_ "Error: bad port"` \"$pp\" `_ "in desktop-file for service"` \"$name\"."
        srv_port2rule "$pp"
      done
    fi
  done
}

# srv_port2rule -- convert <proto>:<port> into iptables rule
# Example:
#   "tcp:10" => -p tcp --dport 10
#   "tcp:10-12" => -p tcp --dport 10:12
#   "tcp:10:12" => -p tcp --dport 10:12
srv_port2rule(){
  local p="${1:-}"
  local proto="${p%%:*}"
  local ports="$(echo ${p#*:} | tr '-' ':')"

  printf -- "-p %s" "$proto"
  if [ -n "$ports" ]; then
    test_portrange "$ports"
    printf -- " --dport %s" "$ports"
  fi
  printf "\n"
}

# srv_extract -- split service string to tcp and udp ports and reminder
# Usage:
#  printf "%s" "$string" | tr ";" "\n" | srv_extract tcp
#  printf "%s" "$string" | tr ";" "\n" | srv_extract udp
#  printf "%s" "$string" | tr ";" "\n" | srv_extract srv
# TO BE REMOVED
# Newline separator on input - comma separator for ports, semicolon separator
# for services on output

srv_extract(){
  local obj="${1:-}";
  local ret= sep=
  while read s; do
    [ -n "$s" ] || continue
    case "$obj" in
    tcp)
      sep=','
      echo $s | grep -q "^tcp:$regex_p1\$" && ret="${ret:+$ret$sep}${s#tcp:}" ||:
      echo $s | grep -q "^$regex_p1\$"     && ret="${ret:+$ret$sep}$s" ||:
    ;;
    udp)
      sep=','
      echo $s | grep -q "^udp:$regex_p1\$" && ret="${ret:+$ret$sep}${s#udp:}" ||:
      echo $s | grep -q "^$regex_p1\$"     && ret="${ret:+$ret$sep}$s" ||:
    ;;
    srv)
      sep=';'
      echo $s | grep -q "^\(tcp:\|udp:\)\?$regex_p1\$" ||
        ret="${ret:+$ret$sep}$s"
    ;;
    esac
  done
  echo "$ret"
}

# srv_compile -- add old-style tcp and udp settings to service string
# Usage: srv_compile <srv> <tcp> <udp>
# Comma, space or semicolon separators on input - semicolon separator on output
# Example:
#  "www;ftp" "10;11,12 13" "20;21" =>
#  "www;ftp;tcp:10;tcp:11;tcp:12;tcp:13;udp:20;udp:21;"
srv_compile(){
  local srv="${1:-}"
  local tcp="${2:-}"
  local udp="${3:-}"
  local sep=';'
  local i= ret=
  {
    printf "%s\n" "$srv" | tr ';, ' '\n'
    printf "%s\n" "$tcp" | tr ';, ' '\n' |
      while read i; do [ -z "$i" ] || echo "tcp:$i"; done
    printf "%s\n" "$udp" | tr ';, ' '\n' |
      while read i; do [ -z "$i" ] || echo "udp:$i"; done
  } | tr '\n' ';'
}

