#!/bin/bash
 

 sudo dmesg -T --level=alert,crit,err

 sudo dmesg -Tk | tail -10