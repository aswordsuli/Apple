#!/bin/bash


#1. Create a Bash script that prints "Hello, World!" when executed.


 echo "Hello, World!" 


#2. Write a Bash script that asks the user for his name, then displays a greeting along with
#his name

echo "what's your name "
read name 

echo "hello $name"


#3. Write a Bash script that asks the user for their name and age, then displays a greeting
#along with his name and age.


echo "what's your name "
read name  age 

echo "hello $name your age: $age"


#4. Write a Bash script that prompts to securely input a password (without displaying
#characters), and then display a message saying the password was accepted.

echo "type a password" 

read -s password 

echo "accepted password"


#5. Write a Bash script that prompts to enter three favorite colors from the user, then
#displays the colors.

echo "enter your favorite three colors "
read color1 color2 color3 

echo "$color1 $color2 $color3"



#6. Write a Bash script that prompts to enter three favorite colors from the user, then
#displays the first and third colors..

echo "enter your favorite three colors "
read color1 color2 color3 

echo "$color1  $color3"



#7. Write a Bash script that prompts to enter three colors from the user, stores them in an
#array, and then displays the colors.

echo "enter your favorite three colors"

read -a colors 

echo ${colors[@]}



#8. Write a Bash script that prompts the user to enter his favorite movies, stores them in an
#array, and then displays the name of movies and the number of them.

echo "enter your favorite movies"

read -a movies 

echo " movies nume  ${#movies[@]}  movies list  ${movies[@]} "


#9. Write a Bash script that prompts the user to enter his favorite movies, stores them in an
#rray, and then displays the name of first and second movies only.

echo "enter your favorite movies"

read -a movies 

echo  movies list  ${movies[0]} ${movies[1]}  


#10. Bash script that takes two arguments from the command line and prints them.

echo "enter two arguments "

read arg1 
read arg2
echo $arg1 $arg2

#11. [OPTIONAL] Create a Bash script that takes a name and two favorite numbers as input
#using the read comm

echo enter a name and tow numbers 

read name 
read number1
read number2 

echo $name $number1 $number2 