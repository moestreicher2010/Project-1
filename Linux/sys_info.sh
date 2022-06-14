#!/bin/bash

if [ $UID -ne 0 ]; then
         echo "Please run this script with sudo."
         exit
fi

if [ ! -d $HOME/research ]
then
mkdir $HOME/research
fi 

outputfile=$HOME/research/sys_info.txt
if [ -f $outputfile ]; then
         rm $outputfile
fi

ip=$(ip addr | grep "inet " | grep enp0s3)
execs=$(find /home -type f -perm 777)

echo "A Quick System Audit Script" >> $outputfile

date >> $outputfile

echo "Machine Type Info:" >> $outputfile
echo $MACHTYPE >> $outputfile

echo -e "Uame info: $(uname -a) \n" >> $outputfile

echo -e "IP Info: $ip \n" >> $outputfile

echo "Hostname: $(hostname -s )" >> $outputfile

echo "DNS Servers:" >> $outputfile
cat /etc/resolv.conf >> $outputfile

echo "Memory Info:" >> $outputfile
free >> $outputfile

echo -e "\nCUP Info:" >> $outputfile
lscpu | grep CPU >> $outputfile

echo -e "\Disk Usage:" >> $outputfile 
df -H | head -2 >> $outputfile

echo -e "\nWho is logged in: \n $(who -a) \n" >> $outputfile 

echo -e "\n777 Files:" >> $outputfile 
echo $execs >> $outputfile

echo -e "\nTop 10 Processes" >> $outputfile 

ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $outputfile 


files=('/etc/passwd' '/etc/shadow')

for file in ${files[@]} 
do 
ls -l $file >> $outputfile
done

