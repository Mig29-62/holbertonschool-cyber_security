#!/bin/bash
grep "useradd" auth.log | grep "new user" | awk -F'name=' '{print $2}' | awk -F',' '{print $1}' | sort | uniq
