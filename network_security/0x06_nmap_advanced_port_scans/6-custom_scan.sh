#!/bin/bash
sudo nmap -p $2 --scanflags -oN custom_scan.txt URGACKPSHRSTSYNFIN $1
