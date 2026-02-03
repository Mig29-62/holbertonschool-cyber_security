#!/bin/bash
echo $1 | sha1sum -z | cat>0_hash.txt
