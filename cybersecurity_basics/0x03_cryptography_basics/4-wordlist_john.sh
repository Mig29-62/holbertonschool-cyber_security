#!/bin/bash
john --wordlist /usr/share/wordlists/rockyou.txt.gz |john --show "$1" > 4-password.txt
