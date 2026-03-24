#!/bin/bash
encoded_string="${1#\{xor\}}"
echo "$encoded_string" | base64 -d | perl -pe '$_ ^= 95 x length'
