#! /bin/bash

#   Copyright (c) 1998  Martin Schulze <joey@debian.org>
#   Slightly modified by Luis Francisco Gonzalez <luisgh@debian.org>
#   Path lists implemented with Bash-arrays 
#	by Ivan Zakharyaschev <imz@altlinux.ru> November 2001
#   Clean up by ALT Linux Team <devel@lists.altlinux.org> 2002-2007
#   imz@altlinux.ru, 2003 Feb 8: 
#   - more quotes (to prevent expansion in wrong places like the call of tr);
#   - accept ./* as file-URL, too.

#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.

#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.

#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

. shell-quote

########################
# Load program lists.  #
########################

# Why not to make a stdBash library? Not to copy such things everywhere.
source_if_exists()
{
	local f="$1"
	shift
	[ -f "$f" ] && . "$f" "$@"
}

msg_info()
{
	printf %s\\n "${0##*/}: $*" >&2
}

is_prog()
{
	local r

	[ -n "$1" ] || return 1
	r="$(type -p "$1")" || return 1
	[ "$r" != "${r##/}" ] || return 1
	[ -x "$r" ] || return 1

	return 0
}

source_if_exists /etc/urlview/url_handlers
[ -z "$HOME" ] ||
	source_if_exists "$HOME"/.etc/urlview/url_handlers

######################################
# Process the data and run a handler #
######################################

TAG=
HANDLER=

# Accepts a list of available handler-scripts:tag pairs as parameters.
# Assigns the first executable values one to HANDLER & TAG,
# possibly adding special constructs to HANDLER.
find_handler()
{
	local ele tag prog

	for ele in "$@"; do
		tag="${ele##*:}"
		prog="${ele%%:*}"
		# Check whether the executable is installed on this system:
		is_prog "${prog%% *}" ||
			continue
		case "$tag" in
			PW)
				if [ -n "$DISPLAY" ]; then
					TAG=P
					HANDLER="$prog"
					return 0
				fi
				;;
			XW)
				if [ -n "$DISPLAY" ]; then
					TAG=X
					HANDLER="$prog"
					return 0
				fi
				;;
			XT)
				if [ -n "$DISPLAY" -a -x "$XTERM" ]; then
					TAG=X
					HANDLER="$XTERM -e $prog"
					return 0
				else
					HANDLER="$prog"
					return 0
				fi
				;;
			*)
				HANDLER="$prog"
				return 0
				;;
		esac
	done
}

type=
setType()
{
	type="$(printf %s "$1" | tr '[:upper:]' '[:lower:]')"
	if [ -n "$(printf %s "$type" | tr -d '[:alpha:]')" ]; then
		msg_info "Invalid URL type \`$type'"
		exit 1
	fi
}

url="$1"; shift

case "$url" in
	/*)
		setType file
		url="$type://$url"
		;;
	./*)
		setType file
		url="$type://$(pwd)/${url##./}"
		;;
	*:*) 
		setType "${url%%:*}"
		;;
	*@*.*)
		setType mailto
		;;
	*)
		if [ -f "$url" ]; then
			setType file
			url="$type://$(pwd)/$url"
		fi
		;;
esac

if [ -z "$type" ]; then
	setType http
	url="$type://$url"
fi

case "$type" in
	mailto)
		[ -z "${MAILER-}" ] ||
			eval find_handler "\"$(quote_shell "$MAILER" | sed 's/:/" "/g')\""
		;;
	*)
		[ -z "${BROWSER-}" ] ||
			eval find_handler "\"$(quote_shell "$BROWSER" | sed 's/:/" "/g')\""
		;;
esac

if [ -z "$HANDLER" ]; then
	report_url='http://bugs.altlinux.ru/'

	if ! eval '(( "${#'"$type"'_prgs[@]}" ))'; then
		msg_info "Unknown URL type \`$type'"
		msg_info "Please report URL and viewer to $report_url"
		exit 1
	fi

	eval 'find_handler "${'"$type"'_prgs[@]}"'
fi

if [ -z "$HANDLER" ]; then
	msg_info "No handler found for URL \`$url'"
	msg_info "You may report URL and viewer to $report_url"
	exit 1
fi

# type-special hooks: some processing can be appended here
case "$type" in
	mailto)
		url="${url#mailto:}"
		url="${url#//}"
		;;
esac

nHANDLER="$(printf "$HANDLER" '')"
HANDLER="$(printf "$HANDLER" "$url")"
if [ "$HANDLER" != "$nHANDLER" ]; then
	case "$TAG" in
		P)
			nohup $HANDLER >/dev/null 2>&1 &
			;;
		X)
			$HANDLER 2>/dev/null &
			;;
		*)
			$HANDLER
			;;
	esac
	exit
fi

case "$TAG" in
	P)
		nohup $HANDLER "$url" >/dev/null 2>&1 &
		;;
	X)
		$HANDLER "$url" 2>/dev/null &
		;;
	*)
		$HANDLER "$url"
		;;
esac
