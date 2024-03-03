#!/bin/bash

if command -v wkhtmltopdf >/dev/null; then
    bold=$(tput bold)
    normal=$(tput sgr0)
    echo "Enter HTML file name ${bold}without extension${normal}. (example.html --> example)"
    echo "If file is ${bold}not in same folder ${normal}then specify full path. (/home/user/html/example)"
    read filename
    file="${filename}.html"
    out="${filename}.pdf"
    wkhtmltopdf $file $out
else
    echo "wkhtmltopdf not installed. Use following command."
    echo "sudo apt install wkhtmltopdf"
fi
