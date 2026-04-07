#!/bin/bash
sort logs.txt | uniq -c | sort -nr | head -n 1
