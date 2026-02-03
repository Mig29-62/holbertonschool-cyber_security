#!/bin/bash
echo -n '$1'| sha1sum |cut -d ' ' -f 1| cat > 0_hash.txt 
