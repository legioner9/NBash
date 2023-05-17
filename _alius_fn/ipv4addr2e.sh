#!/usr/bin/env bash

ipv4addr2e(){
    ip -4 addr | sed -ne 's|^.* inet \([^/]*\)/.* scope global.*$|\1|p' | head -1
}