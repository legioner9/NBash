# Colorize prompt and man page view

# prompt
if [ "$(id -u)" = "0" ]; then
	# root prompt
	PS1="\[\033[31m\][\u@\h \W]# \[\033[0m\]"
else
	# user prompt
	PS1="\[\033[32m\][\u@\h \W]\$ \[\033[0m\]"
fi

# man
export LESS_TERMCAP_mb=$'\033[01;38;5;34m'
export LESS_TERMCAP_md=$'\033[01;34m'
export LESS_TERMCAP_me=$'\033[0m'
export LESS_TERMCAP_so=$'\033[07;40m'
export LESS_TERMCAP_se=$'\033[0m'
export LESS_TERMCAP_us=$'\033[01;32;4;32m'
export LESS_TERMCAP_ue=$'\033[0m'
