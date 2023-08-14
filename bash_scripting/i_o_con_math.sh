#!/bin/bash 


# 1. Write a script that display “Hello, How are you”.
: '
echo "Hello , How are you" 





# 2. Write a script that display “Hello, Have a nice day”

echo "Hello , Have a nice day" 




# 3. Write a script that prints the message "hello" and "this is the
# my user name: " (print the user name that the script is being ran
# from) .


echo "Hello This is the my username :  $USER"


# 4. Write a script that display the light-traffic colors gradually
# (one after other in slow manner)

echo "green"
sleep 3 

echo "yellow"
sleep 3 

echo "red"
sleep 3 


# 5. Write a script that count from 1 -4 gradually (one after other in
# slow manner)

x=1
while [[ $x -le 4 ]]; do 
echo "$x"
sleep 1
x=$((x+1))
done

# 6. use read -p to request an input of a number and call it num. if
# the num does not equal to 7 (use != and -ne) echo that the number
# is not 7.

read -p "enter a number:   " num 

if [[ $num -ne 7 ]]; then
echo "number not equal to 7"
else 
echo "number is equal to 7"
fi


# 7. define: var1=7. check if value equals 7. if variable value equals
# 7 ,echo the value is true (no arguments or user input).
var1=7

if [[ $var1 -ne 7 ]]; then
echo "number not equal to 7"
else 
echo "number is equal to 7"
fi


# 8. Set a Value “Hello” and “Re/Start” in two Variable as following,
# Print out the variables together

a="Hello"
b="Re/Start"

echo "$a $b "


# 9. write a script that asks the user for his degree. store the value
# in the a variable (use read -p) and echo it.

read -p "enter your degree:  " a
echo "$a" 




# 10. External value - Write a script that check how many arguments
# were given to the script if it’s above five echo “too many” ,
# between 3 - 5 echos “nice” lower then 3 echos “not enough” and if
# zero echos “sloppy” .


case $# in
    [6-9]|10|[1-9][0-9]) echo "too many arguments";;
    [3-5]) echo "nice";;
    [1-2]) echo "not enough";;
    *) echo "sloppy";;
esac


if [[ $# -gt 5 ]]; then echo "too many arguments"
elif [[ $# -ge 3 && $# -le 5  ]]; then echo "nice "
elif [[ $# -lt 3 && $# -gt 0 ]]; then echo "not enough" 
else echo "sloppy"
fi







# 11. Write a script that Request from the user to input two
# numbers, add between two the numbers and echo the
# result.(validate each inputs are a number)



read -p "enter first number " num1 
read -p "enter second number " num2 

if [[ $num1 =~ ^-?[0-9]+$ && $num2 =~ ^-?[0-9]+$ ]]; then

echo $(($num1+$num2))

fi

'

# 12. Write a script that Request from the user to input two
# numbers, substract between two the numbers and echo the
# result.(validate each inputs are a number)
# 13. Write a script that receives two args and do multiplication
# between them and echo the result (only two validate args).
# 14. Write a script that receives two args and do Division
# between them and echo the result (only two validate args).
# 15. Use bc to demonstrate the simple math operation ( + - / * )
# in a script. For each running script it will receive three
# external args ( validate ! ) the first two numbers the third is
# the operator. The script should echo the result.