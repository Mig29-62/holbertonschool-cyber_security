#!/bin/bash
sudo nmap -p $2 --scanflags URGACKPSHRSTSYNFIN $1 -v > custom_scan.txt 2>&1
