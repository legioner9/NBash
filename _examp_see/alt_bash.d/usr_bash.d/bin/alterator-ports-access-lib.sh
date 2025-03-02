#!/bin/sh -efu

readonly CONFIG="/etc/alterator-ports-access.conf"

portsctrl_config_exists() {
    [ -f "$CONFIG" -a -r "$CONFIG" ]
}

_portsctrl_extract_pre_access() {
    local desc="${1%;}"

    case "$desc" in
        *\;\[*\])
            echo "${desc%;*}"
            ;;
    esac
}

_portsctrl_extract_access() {
    local desc="${1%;}"
    local access=

    case "$desc" in
        *\;\[*\])
            access="${desc##*;[}"
            echo "${access%]}"
            ;;
    esac
}

portsctrl_parse_access() {
    local proc="$1"; shift
    local access="$1"; shift

    access="${access#[}"; access="${access%]}"

    local owner="${access%%:*}"
    local group="${access#*:}"; group="${group%%:*}"
    local mode="${access##*:}"

    "$proc" "$owner" "$group" "$mode" "$@"
}

portsctrl_iterate_serial() {
    local proc="$1"; shift

    (
        if portsctrl_config_exists; then
            . "$CONFIG"
        fi

        ports=( $(udevadm info --path=/devices/platform/serial8250 --export-db --export | sed -n -e '/DEVPATH.*ttyS/ { /serial8250/d; s/^.*\///p }') )

        for port in "${ports[@]}"; do
            printed=

            for i in "${SERIAL_ENABLED[@]}"; do
                enabled="$(_portsctrl_extract_pre_access "$i")"
                access="$(_portsctrl_extract_access "$i")"
                if [ "$port" = "$enabled" ]; then
                    "$proc" "$port" 'yes' "$access" "$@" || exit $?
                    printed="yes"
                    break
                fi
            done

            for i in "${SERIAL_DISABLED[@]}"; do
                disabled="$(_portsctrl_extract_pre_access "$i")"
                access="$(_portsctrl_extract_access "$i")"
                if [ "$port" = "$disabled" -a -z "$printed" ]; then
                    "$proc" "$port" 'no' "$access" "$@" || exit $?
                    printed="yes"
                    break
                fi
            done

            # Ports not listed in config are enabled.
            if [ -z "$printed" ]; then
                "$proc" "$port" 'yes' '' "$@"
            fi
        done
    )
}

portsctrl_iterate_usb() {
    local proc="$1"; shift

    (
        if portsctrl_config_exists; then
            . "$CONFIG"
        fi

        j=0
        for i in "${USB_WHITE_LIST[@]}"; do
            vendorid="$(echo "$i;" | cut -d ';' -f1)"
            prodid="$(echo "$i;" | cut -d ';' -f2)"
            serial="$(echo "$i;" | cut -d ';' -f3)"

            info="${i#*;*;*;}"
            access="$(_portsctrl_extract_access "$info")"
			[ -z "$access" ] || info="${info%;[}"

			class=
			subclass=
			proto=
			while [ -n "$info" ]; do
				case "$info" in
					C[0-9a-f][0-9a-f]\;*)
						class="${info%%;*}"
						class="${class#C}"
						info="${info#*;}"
						;;
					S[0-9a-f][0-9a-f]\;*)
						subclass="${info%%;*}"
						subclass="${subclass#S}"
						info="${info#*;}"
						;;
					P[0-9a-f][0-9a-f]\;*)
						proto="${info%%;*}"
						proto="${proto#P}"
						info="${info#*;}"
						;;
					*)
						break
						;;
				esac
			done

            "$proc" "$j" "$vendorid" "$prodid" "$serial" "$class" "$subclass" "$proto" "$info" "$access" "$@" || exit $?
            j=$((j+1))
        done
    )
}
