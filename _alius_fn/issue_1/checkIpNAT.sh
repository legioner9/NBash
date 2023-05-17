#!/usr/bin/env bash

if echo "$IP" | grep -qE '^(10\.|172\.1[6789]\.|172\.2[0-9]\.|172\.3[01]\.|192\.168)'; then
    echo ""
    echo "It seems this server is behind NAT. What is its public IPv4 address or hostname?"
    echo "We need it for the clients to connect to the server."

    PUBLICIP=$(curl -s https://api.ipify.org)
    until [[ $ENDPOINT != "" ]]; do
        read -rp "Public IPv4 address or hostname: " -e -i "$PUBLICIP" ENDPOINT
    done
fi
