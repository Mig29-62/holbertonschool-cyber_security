#!/bin/bash
sudo sshd -T | grep -Ev 'permitrootlogin|passwordauthentication|permitemptypasswords'
