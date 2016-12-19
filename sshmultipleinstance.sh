#!/bin/bash
# In below mentioned the cut the string from comma and assign the value to IPs variables and User_commands variable for user commands argument.
IP1=$(echo $1 | cut -d, -f1)
IP2=$(echo $1 | cut -d, -f2)
IP3=$(echo $1 | cut -d, -f3)
User_Commands=$2

echo "ssh for connection with instances."
echo "This is your IP1 "
ssh -i /root/FSEP-HDP-23.pem root@$IP1 $User_Commands > useroutput.txt;cat useroutput.txt
echo "This is your IP2"
ssh -i /root/FSEP-HDP-23.pem root@$IP2 $User_Commands > useroutput.txt;cat useroutput.txt
echo "This is your IP3"
ssh -i /root/FSEP-HDP-23.pem root@$IP3 $User_Commands > useroutput.txt;cat useroutput.txt
