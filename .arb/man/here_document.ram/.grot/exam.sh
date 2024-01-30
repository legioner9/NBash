#!/bin/bash

cat <<End-of-text
--------------------------
The quick brown fox
jumped over the lazy dog
--------------------------
End-of-text

cat <<EOF
CREATE DATABASE ${DB_NAME};
CREATE USER '${APP_USER}'@'localhost' IDENTIFIED BY '${APP_PASSWORD}';
GRANT ALL ON ${DB_NAME}.* TO '${APP_USER}'@'localhost'
EOF
