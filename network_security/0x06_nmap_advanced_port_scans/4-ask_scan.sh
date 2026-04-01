#!/bin/bash
sudo nmap -sA  -Pn -p $2 --max-rtt-timeout 1000ms --reason  $1
