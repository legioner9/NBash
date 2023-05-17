#!/usr/bin/env bash
# -*- coding: utf-8 -*-

checkOS() {
    if [[ -e /etc/debian_version ]]; then
        OS="debian"
        source /etc/os-release

        if [[ $ID == "debian" || $ID == "raspbian" ]]; then
            if [[ $VERSION_ID -lt 9 ]]; then
                echo "⚠️ Your version of Debian is not supported."
                echo ""
                echo "However, if you're using Debian >= 9 or unstable/testing then you can continue, at your own risk."
                echo ""
                until [[ $CONTINUE =~ (y|n) ]]; do
                    read -rp "Continue? [y/n]: " -e CONTINUE
                done
                if [[ $CONTINUE == "n" ]]; then
                    exit 1
                fi
            fi
        elif [[ $ID == "ubuntu" ]]; then
            OS="ubuntu"
            MAJOR_UBUNTU_VERSION=$(echo "$VERSION_ID" | cut -d '.' -f1)
            if [[ $MAJOR_UBUNTU_VERSION -lt 16 ]]; then
                echo "⚠️ Your version of Ubuntu is not supported."
                echo ""
                echo "However, if you're using Ubuntu >= 16.04 or beta, then you can continue, at your own risk."
                echo ""
                until [[ $CONTINUE =~ (y|n) ]]; do
                    read -rp "Continue? [y/n]: " -e CONTINUE
                done
                if [[ $CONTINUE == "n" ]]; then
                    exit 1
                fi
            fi
        fi
    elif [[ -e /etc/system-release ]]; then
        source /etc/os-release
        if [[ $ID == "fedora" || $ID_LIKE == "fedora" ]]; then
            OS="fedora"
        fi
        if [[ $ID == "centos" || $ID == "rocky" || $ID == "almalinux" ]]; then
            OS="centos"
            if [[ $VERSION_ID -lt 7 ]]; then
                echo "⚠️ Your version of CentOS is not supported."
                echo ""
                echo "The script only support CentOS 7 and CentOS 8."
                echo ""
                exit 1
            fi
        fi
        if [[ $ID == "ol" ]]; then
            OS="oracle"
            if [[ ! $VERSION_ID =~ (8) ]]; then
                echo "Your version of Oracle Linux is not supported."
                echo ""
                echo "The script only support Oracle Linux 8."
                exit 1
            fi
        fi
        if [[ $ID == "amzn" ]]; then
            OS="amzn"
            if [[ $VERSION_ID != "2" ]]; then
                echo "⚠️ Your version of Amazon Linux is not supported."
                echo ""
                echo "The script only support Amazon Linux 2."
                echo ""
                exit 1
            fi
        fi
    elif [[ -e /etc/arch-release ]]; then
        OS=arch
    else
        echo "Looks like you aren't running this installer on a Debian, Ubuntu, Fedora, CentOS, Amazon Linux 2, Oracle Linux 8 or Arch Linux system"
        exit 1
    fi
}
