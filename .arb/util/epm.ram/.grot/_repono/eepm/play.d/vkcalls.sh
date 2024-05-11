#!/bin/sh

PKGNAME=vk-calls
SUPPORTEDARCHES="x86_64"
DESCRIPTION="VK Calls for Linux from the official site"

. $(dirname $0)/common.sh

epm install "https://vkcalls-native-ac.vk-apps.com/latest/vk-calls-amd64.deb" || exit
