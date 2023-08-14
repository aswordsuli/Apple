#1. write a script that ask the user what is the color of the sun if yellow echo right else echo
#false
: '
echo "1 ) what is the color of the sun" 
read answer 

if [ "$answer" = "yellow" ]; then
    echo "right"
else
    echo "false"
fi    
'

#2. write a script that ask the user what is the color of the sky if blue echo right else echo
#false
: '
echo "2 ) what is the color of the sky" 
read answer 

if [ "$answer" = "blue" ]; then
    echo "right"
else
    echo "false"
fi    

'


#3. Write a script that prompts the user to enter their age, and then prints a message
#depending on whether they are old enough to vote (age 18 or older).
: '
echo "3 ) what is your age" 
read answer 

if [ "$answer" -ge 18 ]; then
    echo "depending on your age you can vote"
else
    echo "u depending on your age you can not vote"
fi 

'   


#4. Write a script that prompts the user to enter a number, and then checks whether
#the number is positive or negative.
: '

echo "4 ) enter a number" 
read answer 

if [ "$answer" -gt 0 ]; then
    echo "number is positive"
elif [ "$answer" -eq 0 ]; then   
    echo "number is 0 "
else
    echo "number is negative"
fi 
'

 

#5. define: var1=10 . check if value greater than 5 . if the variable value is greater than 5
#,echo the value is true (no arguments or user input)
: '
var1=10 
if [ $var1 -gt 5 ]; then
    echo "the value is true "
else 
    echo "false" 
fi 
'

#6. Write a script that prompts the user to enter a number, and then checks whether
#the number is even or odd.
: '
echo "Enter a number: " 
read number 

if (( $number%2 == 0 )) ; then 
    echo "number is even"
else 
    echo "number is odd"
fi 
'


#7. Write a script that prompts the user to enter a number, and then checks whether
#the number is between 1 and 10 (inclusive).
: '
echo "Enter a number: " 
read number 

if [  $number -ge 1 ] && [ $number -le 10  ] ; then 
    echo "number is between 1 and 10 (inclusive)"
else 
    echo "false"
fi 
'


#8. . define: var1=10 . check if value less than 15 . if variable value less than 5 ,echo the
#value is true no arguments or (user input )
: '
var1=10 

if [ $var1 -lt 15 ] ; then
    echo "true" 
else 
    echo "false"
fi    
'
#9. . check if external argument value equals 5 . If it does equal or greater than 6 echo "you
#have entered higher argument”, if it equal echo “CORRECT” if less than 5 echo “low”
: '
echo "enter any number "
read number 

if [ $number -eq 5 ] ; then
    echo "COORECT"
elif [ $number -lt 5 ] ; then
    echo "low"
else 
    echo "you have entered higher argument"
fi     
'

#10. Write a script that request the user to enter his favorite season, if it equals to spring or
#autumn echo “me too” otherwise “nice to know”

: '
echo "Enter your favorite season" 
read season
if [ $season = "autumn" ] || [ $season = 'spring' ]  ; then
    echo "me too !!!"
else 
    echo "nice to know "
fi 

'

