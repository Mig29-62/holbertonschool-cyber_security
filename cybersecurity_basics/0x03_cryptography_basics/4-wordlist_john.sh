john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou_clean.txt "$1" ; john --show  "$1"  > 4-password.txt
