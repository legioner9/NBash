#!/usr/bin/env bash

isRoot() {
	if [ "$EUID" -ne 0 ]; then
		return 1
	fi
}
