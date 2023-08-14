#!/bin/bash 

# 1. define: var1=10 . check if value greater than 5 . if the variable
# value is greater than 5 ,echo the value is true (no arguments or
# user input) .


var1="10"
if [[ $var1 -gt 5 ]]; then echo "the value is true " 
fi


# 2. define: var1=10 . check if value less than 15 . if variable
# value less than 5 ,echo the value is true no arguments or (user
# input )

var1="10"
if [[ $var1 -lt 5 ]]; then echo "the value is true " 
fi

# 3. Write a script that request to enter number that range from 1 -
# 100. If Variable value greater than 50 ‘echo “ Banana”, less than
# 50 echo “Apple”, equal to 50 echo “BINGO” out of range echo
# “Error”.

read -p "entera a number between 1 and 100  " number 

if [[ $number -lt 50 ]]; then echo "Apple"


fi

# 4. check if external argument value greater than 1 . If it true,
# echo "you have entered the correct argument”.
# 5. check if external argument value equals 5 . If it does equal
# or greater than 6 echo "you have entered higher argument”, if
# it equal echo “CORRECT” if less than 5 echo “low”
# 6. Check if the external argument equals Potato , if it equals echo
# “Right” otherwise “hard luck” (hint, use == )
# 7. Script- ask from the user to write his two favorites colors, if
# he doesn’t enter two values echos error message. (read -p ).
# 8. Write a Script that request from the user to enter his favorite
# lucky number, if it equal to “7” or “77” echo “wow! .. mee too “
# otherwise “Nice”.
# 9. Write a script that request the user to enter his favorite
# season, if it equals to spring or autumn echo “me too” otherwise
# “nice to know”.
# 10.write a script that request the name of a file or directory (in
# the current directory) and check if it is a regular file/dir .
# Echos “Great” if it’s regular file otherwise “not regular”