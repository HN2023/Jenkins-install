
#!/bin/bash 



#Description: System General Inventory
#Author: Hawa
#Date: 06 2026

echo "System inventory in progress please wait ...."
sleep 2
echo "Below is the user excuting this script"
whoami
sleep 3
echo "The number of CPU's on this system is: "
nproc
sleep 2
echo "The memory info is: "
free -m
sleep 2
echo "The os version is:
hostnamectl 
sleep 3
lscpu
lsblk
uname -r

echo "System inventory completed successfully. Thanks for stopping by" 
sleep 3
