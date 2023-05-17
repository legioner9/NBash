#!/usr/bin/env bash

ipv6addr2e(){
    ip -6 addr | sed -ne 's|^.* inet6 \([^/]*\)/.* scope global.*$|\1|p' | head -1
}