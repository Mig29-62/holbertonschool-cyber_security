#!/bin/bash
grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" auth.log | uniq -c | sort -nr | awk '{print $1}'| head -n 1
