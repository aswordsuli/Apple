#!/bin/bash



#1. use read -p to request an input of a number and call it num. if
#the num equals 1 ( use -eq) echo that the correct number was
#entered.

read -p "enter an number " num 
if [ num -eq ]; then echo "correct number was entered"
fi

#2. check if an argument was entered and if it was, echo the
#argument.

read -p "type anything " argument 
if [ -n argument  ]; then echo $argument 
fi


#3. use read -p to request an input of a number and call it num. if
#the num does not equal to 1 (use != and -ne) echo that the number
#is not 1.

read -p "enter any number " num  

if [[ num -ne 1 ]]; then echo "number is not 1"
fi



#4. define: var1=1. check if value equals 1. if variable value equals
#1 ,echo the value is true (no arguments or user input) .

var1=1 
if [[ var1 -eq 1 ]]; then echo "value is true "
fi


#5. define: var1= -1 . check if value equals -1 . if variable value
#equals -1 ,echo the value is true (no arguments or user input)

var1=-1
if [[ var1 -eq -1 ]]; then echo "value istrue " 

fi


#6. define: var1= b . check if value equals b . if variable value
#equals b ,echo the value is true ( no arguments or user input)



var1=b

if [ $var1 = "b" ]; then echo "value is true " 
fi

#7. define: var1= b . check if greater than a . if variable value
#greater than a ,echo the value is true (no arguments or user
#input) .(hint, ascii table )

var1=b 
if [ $var1 > "a" ]; then echo "value is true " 
fi

#8. define: var1= b . check if less than c . if variable less
#than c ,echo the value is true (no arguments or user input)


var1=c
if [ $var1 < "c" ]; then echo "value is true"
fi



#9. write input validation if an external argument was entered. if
#it was, echo thank you , and echo the argument , else echo please
#run script with 1 argument

if [ -z $1  ]; then echo "please run script with 1 argument" 
else echo "thanks"
fi

#10. Script - ask the user to enter the number “7” , if yes echos
#“Thanks” , if no echos “Heey .. don’t be mad “

read -p "Enter the number 7 " number 

if [[ $number -eq 7  ]]; then echo "thanks" 
else echo " Heey .. don: t be mad"
fi


