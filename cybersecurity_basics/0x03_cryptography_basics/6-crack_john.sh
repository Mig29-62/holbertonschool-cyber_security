#!/bin/bash
john --wordlist --format=RAW-SHA256 rockyou_clean.txt "$1" ; john --show --format=RAW-SHA256  "$1"| awk -F: '/:/ {print $2}' | head -n 1 >6_password.txt
