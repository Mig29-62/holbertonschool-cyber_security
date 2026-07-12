TASK 0
connected using ssh.then researched using gtfobins and found the command choom -n 0 /bin/sh with a lil change sudo choom -n 0 /bin/sh it become and interactive console for root cd  ls then cat flag.txt 
TASK 1
first connect using ssh.then i switched to /tmp then installed pspy64 monitored cron activity after finding the source discovered it can be exploited in /home/user/dropbox folder.injected command-like filenames using
touch ./--checkpoint=1
touch ./--checkpoint-action=exec=sh\ shell.sh 
this commands i found from a medium article.then i crafted shell.sh first i used it to execute entrypoint.sh then i typed in
mv /root/flag.txt /home/user/dropbox
and captured the flag
TASK 2
using simple ls -al i see service has interesting SUID and rws for root and x(execute) permission for me.using
strings service
i found out that at the some point related to overflow the program has a default value of a variable as	11111111 and service uses strcmp to compare it to 22222222 if it is 22222222 service calls /bin/bash and executes as root
