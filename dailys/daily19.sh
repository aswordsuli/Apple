#!/bin/bash 


stars3(){

read -p "enter a number :  "  num 

spaces=$((num -1))
stars=1

while [ $num -gt 0 ]; do
  for ((i=0; i<spaces; i++)); do
        echo -n " "
  done
  for ((i=0; i<stars; i++)); do 
    echo -n "*"
  done  
  let "num--"
  let "spaces--"
  let "stars++"
  echo
done

}

stars3



is_string_palindrome(){
 
 read -p "enter a string:  " str

 length=${#str}
    half=$((length/2))

f_str=${str:0:half}
if [ $((length%2)) -eq 0 ]; then
        l_str=${str:half}
    else 
        l_str=${str:half+1}
fi        
reversed=$( echo $l_str | rev )

if [[ $reversed == $f_str ]]; then
    echo "string is a palindrome "
    else 
       echo  " string is not a palindrome: "

fi       
}

is_string_palindrome