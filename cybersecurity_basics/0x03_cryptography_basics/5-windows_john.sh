#!/bin/bash
john --wordlist rockyou_clean.txt --format=nt "$1" ; john --show --format=nt "$1"| awk -F: '/:/ {print $2}' | head -n 1 >5_password.txt
