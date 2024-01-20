#!/bin/bash
color()(set -o pipefail;"$@" 2> >(sed $'s,.*,\e[31m&\e[m,'>&2))
var=
echo "${var-"default value"}" 
echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
var="inner_value"
echo "${var-"default value"}" 
echo -e "${GREEN}\$var = $var${NORMAL}" #print variable

var=
: "${var:=DEFAULT}"
echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
