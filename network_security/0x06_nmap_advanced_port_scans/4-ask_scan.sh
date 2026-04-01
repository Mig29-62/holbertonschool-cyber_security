#!/bin/bash
sudo nmap --max-rtt-timeout 1000ms  -sA -p $2 $1
