#!/bin/bash


read -p "enter a number: " num 
i=0
while [ $i -le $num ]; do
  j=0
   while [ $j -le $num ]; do

        if [[ $i -eq $((num/2)) ]] || [[ $j -eq $((num/2)) ]]; then 
            echo -n "+"
        else echo -n " "
        fi
    let "j++"
   done
   echo
 let "i++"
done
echo
