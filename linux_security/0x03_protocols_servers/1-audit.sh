#!/bin/bash
sudo sshd -T | grep -E 'permitrootlogin|passwordauthentication|permitemptypasswords'

