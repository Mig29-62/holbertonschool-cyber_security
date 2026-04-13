#!/bin/bash
grep -E "sshd|pam_unix" auth.log | cut -d' ' -f5- | tr -s ' ' '\n' | grep -E "(pam_unix\(sshd:auth\):|Failed|Invalid|Address|pam_unix\(sshd:session\):|reverse|Accepted|Did|error:|Server|subsystem|syslogin_perform_logout:|Received|PAM|Jax|Bad|new|changed|change|Kayn|Exiting)" | sort | uniq -c | sort -nr
