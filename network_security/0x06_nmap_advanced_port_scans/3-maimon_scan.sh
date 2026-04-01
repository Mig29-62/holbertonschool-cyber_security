#!/bin/bash
sudo nmap -vvv -sM -p 21,22,23,80,443 $1
