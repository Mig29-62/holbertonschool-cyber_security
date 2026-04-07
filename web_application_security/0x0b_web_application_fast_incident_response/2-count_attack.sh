#!/bin/bash
sort logs.txt | uniq -c | sort -nr | head -n 1 | awk -F ' ' '{print $1}'
