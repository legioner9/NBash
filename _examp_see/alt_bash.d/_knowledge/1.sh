#!/bin/bash

unset f ||:
for f in "$d"/* ; do
	[ -f "$f" -a -x "$f" ] || continue

	# Don't run *.rpm* and *~ scripts.
	[ "${f%.rpm*}" = "$f" -a "${f%\~}" = "$f" ] || continue

	"$f" "$@"
done