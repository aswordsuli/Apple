#!/bin/bash

read -p "enter a number : " num 
    sum=0
    temp=$num
   while [ "$temp" -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit))
        temp=$((temp / 10))
    done

    if [[ $(( sum % 3 )) -eq 0 ]] || [[ $((num%2)) -eq 0 ]] || [[ $((num%3)) -eq 0 ]] || [[ $((num%4)) -eq 0 ]] || [[ $((num%5)) -eq 0 ]] ;then
        echo "num is not prime "
    else echo "num is  prime !! " 
    fi


: '
read -p "enter a number :  "  num 

while [ $num -gt 0 ]; do
    
    for(( i=0; i<num; i++)); do
    echo -n "*"
    done
echo
let "num--"
done
'



: '

10.145.188.102/27


Network:10.145.188.96 
First Host: 10.145.188.97
Last Host: 10.145.188.126
Broadcast:10.145.188.127
Next Subnet:10.145.188.128





10.90.81.128 255.255.255.248:


Network: 10.90.81.128
First Host:10.90.81.129
Last Host: 10.90.81.134
Broadcast:10.90.81.135
Next Subnet:10.90.81.136


11111111.11111111.11111111.11110000


172.21.136.64/19


Network: 172.21.128.0 


First Host:172.21.128.1
Last Host: 172.21.159.254
Broadcast:172.21.159.255
Next Subnet:172.21.160.0

172.21.136.64/11

Network: 172.
First Host:172.
Last Host: 172.
Broadcast:172.
Next Subnet:172.



'