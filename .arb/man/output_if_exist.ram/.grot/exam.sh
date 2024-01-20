#!/bin/bash
color()(set -o pipefail;"$@" 2> >(sed $'s,.*,\e[31m&\e[m,'>&2))
var=
echo 1 "${var:?"NOT_EXIST"}" # NOT_EXIST
"${var:?"NOT_EXIST"}"
echo "${var:?}" # параметр не задан или пустой
 
var="x"
echo "${var:?"NOT_EXIST"}" # x
"${var:+"EXIST"}" # EXIST
echo "${var:+}" # EMPTY output