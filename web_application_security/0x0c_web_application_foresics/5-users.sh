#!/bin/bash
grep "useradd" "$LOG_FILE" | grep "new user" | awk -F'name=' '{print $2}' | awk -F',' '{print $1}' | sort | uniq

