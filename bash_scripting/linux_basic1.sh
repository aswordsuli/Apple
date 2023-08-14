#!/bin/bash 



# Write a script that prints the message "hello world" 
echo '1 )hello world '
#2. Write a script that prints the message " hello AWS Re/Start " 
echo '2 )hello AWS Re/Start ' 
#3. Write a script that prints the message "hello" and "this is the working directory:" (print the
#current directory the script is being ran from) 

echo " 3 ) hello you are working from this directory  ($PWD) " 
 #4. Write a script that prints the message "goodday this is the user home dir:" (print the user
#home directory)
 
 echo " 4 ) goodday this is the user home dir ( $HOME)"

#5. Set a value 7 to variable a, print it out as a variable 

a=7 
echo " 5 ) the variable a is set to $a" 

#6. Set a value “life is good” to a variable life ‘print it out as a variable 
life="life is good"
echo " 6 )the variable life is  set to $life" 



#7. write a script that asks the user for his age. store the value in the variable age (use read
#-p) and echo it
echo "Enter your age: "
read age
echo " 7 ) Your age is $age " 

#8. write a script that asks the user for his first name. store the value in the variable age and
#echo it
echo "Enter your first name: "
read age 
echo "8 ) Your first name is $age"


#9. write a script that asks the user for his first name and last name. store the values in the
#variable age and echo it

echo "Enter your full name: "
read age 
echo "9 ) Your full name is $age"
#10. Execute script that echos your script file name.

echo  $0 


