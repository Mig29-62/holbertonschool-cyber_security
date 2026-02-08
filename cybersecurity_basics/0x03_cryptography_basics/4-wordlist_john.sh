#!/bin/bash
john --format=sha512crypt --wordlist /usr/share/wordlists/rockyou_clean.txt "$1" ; john --show "$1" | cut -d: -f2 | head -n 1  > 4-password.txt
