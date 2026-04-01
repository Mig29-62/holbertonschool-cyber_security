#!/bin/bash
sudo nmap -p 21,22,23,80,443 -sM $1 -vvvv
