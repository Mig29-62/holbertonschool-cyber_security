#!/bin/bash
sudo nmap --reason --max-rtt-timeout 1000ms  -sA -p $2 $1
