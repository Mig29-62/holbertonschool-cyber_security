#!/bin/bash
echo $1 | sha1sum | cat>0_hash.txt | sed 's/-//g' 0_hash.txt
