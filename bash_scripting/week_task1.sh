#!/bin/bash 


: '




# 1. Write a script that prints the message " hello AWS Re/Start "

echo "Hello AWS Re/Start" 

# 2. Write a script that asks the user his favorite color and print it.
 read -p "what is your favorite color " color 
 echo $color 

# 3. Execute a script that echoes your script file name.

echo $0

# 4. Create a Bash script that takes an animal name as an external argument. The
# script should display the sound that the animal makes based on the following
# rules:
# "dog": Woof
# "cat": Meow
# "cow": Moo
# For other animals: Unknown 

case $1 in 
    "dog") echo "dog": woof;;
    "cat") echo "cat":meow;; 
    "cow") echo "cow":Moo;; 
    *) echo "Unknown"
    esac 


# 5. Create a Bash script that takes a pizza topping as an external argument. The
# script should display whether the topping is a vegetarian topping ("cheese",
# "tomatoes", "mushrooms") or not. If vegetarian echo “vegetarian topping”
# otherwise echo “non-vegetarian topping”

case $1 in  

"tomato"|"mushrooms")echo "vegetarian topping";;
"cheese") echo "non-vegetarian";;
*) echo "Unknown";;
esac

# 6. Write a script that asks ask the user to enter the number “7” , if yes echos
# “Thanks” , if no echos “ it’s not 7 ”

read -p "type a number:  " num 

if [[ $num -eq 7 ]]; then echo thanks 
else echo "it is not 7"
fi

# 7. Write a script that prompts the user to enter a filename then checks whether the
# file exists or not. If yes ,echoes “ the file exists” otherwise echos “ the file doesnt
# exist”


read -p "type a filename: " file
if [[ -f $file ]]; then echo "the file exists" 
else echo "the file doesnt exist "
fi



# 8. Create a Bash script that takes a numeric grade as input and displays the
# corresponding letter grade: A for 90-100, B for 80-89, C for 70-79, D for 60-69,
# and F for below 60.

read -p "enter your grade " grade 

case $grade in 

9[0-9]|100) echo "your grade is A ";;
8[0-9]) echo "your grade is B ";;
7[0-9]) echo "your grade is C ";;
6[0-9]) echo "your grade is D ";;
[0-5][0-9]) echo "your grade is F ";;
*) echo "invalid grade";;
esac



# 9. Write a script that prompts the user to enter a filename then checks whether the
# file exists or not, if the file is not exists echos “ the file doesn’t exist “ otherwise,
# check if the file is writable, if yes append “this file is writable” to the file otherwise
# echos “ this file is not writable”

read -p "enter filename :  " file

if [[ ! -e $file ]]; then echo "file does not exist"
elif [[ -r $file ]]; then echo " this file is writable" 
else echo " this file is not writable"

fi


# 10.Write a script that prompts the user to enter a number in range 7-20 then checks
# whether the number is within the specified range, if not echos “ its not within the
# expected range “

read -p "enter number between 7-20 : " num 

if [[  $num -lt 7  || $num -gt 20 ]]; then 

    echo  Its not within the expected range
fi



# 11. Write a script that prompts the user to enter a number in range 7-20 then checks
# whether the number is within the specified range, if not echos “ it’s not within the
# expected range “ , if yes, check if the number is even or odd and echoes if it’s
# “even” or “odd”


read -p "enter number between 7-20 : " num 

if [[  $num -lt 7  || $num -gt 20 ]]; then 

    echo  Its not within the expected range
elif (( $num%2 == 0 )); then 
    echo number is even 
else echo number is odd    

fi


# 12.Write a Bash script that takes an integer as input and displays whether its
# positive or negative.

read -p "enter number :  " num 

case $num in
[1-9]*) echo "positive";;
-[1-9]*) echo "negative" ;;
0) echo "zero";;
*) echo "Invalid input";;
esac


# 13.Develop a Bash script that performs basic arithmetic operations (+, -, *, /) on two
# input numbers using the bc command for floating-point calculations.

read -p "enter number : " num1 
read -p "enter number : " num2 

echo  "$num1 + $num2" | bc
echo  "$num1 - $num2" | bc
echo  "scale=4;$num1 / $num2" | bc
echo  "$num1 * $num2" | bc 


# 14. Write a script that requests the user to enter two numbers and compare between
# them, if they are equal echos “equal” otherwise echos “not equal.


read -p "enter first number :"   num1
read -p "enter second number :" num2 
if [[ $num1 -ne $num2 ]]; then 
echo "numbers are not equal."
else echo "numbers are equal "
fi



#15.Write a script that takes two numbers as arguments and compare between them,
#if they are equal echo “equal” otherwise echo “not equal.

if [[ $1 -ne $2 ]]; then 
echo "numbers are not equal."
else echo "numbers are equal "
fi



# 16.Write a script that takes two numbers as arguments to compare between them,
# first the script has to check if the user passes only two numbers and then, if they
# are equal echo “equal” otherwise echo “not equal”


if [[ $# -eq 2 ]]; then
    if [[ $1 -ne $2 ]]; then 
        echo "numbers are not equal."
    else echo "numbers are equal "

    fi

fi


# 17. Ask the user to enter a password. Check if the password matches “123”. If it
# matches echo verified. If not, echo denied.

read -sp  "enter a password :  " password 

if [[ $password -eq 123 ]]; then echo "verivied "
else echo "denied"
fi




# 18.Create a bash script that takes one password as an external argument, Check if
# the password matches “123”. If it matches echo “verified”. If not, echo “denied”.

if [[ $1 -eq 123 ]]; then echo "verivied "
else echo "denied"
fi



# 19.write a script that requests the name of a file or directory (in your current
# directory) and check if it is a regular file/dir . Echos “Great” if its a regular file
# otherwise “not regular file”.

read -p "enter file name :   " file 

if [[ -f $file ]]; then echo "Great "
else echo  "not a regular file "
fi





# 20.write a script that takes the name of a file or directory (in your current directory)
# as external arguments then check if it is a regular file/dir . Echos “Great” if it’s
# regular file otherwise “not regular file”


if [[ -f $1 ]]; then echo "Great "
else echo  "not a regular file "
fi



# 21.write a script that requests the name of a file or directory and check if it is a
# directory, Echos “it’s directory” if it’s directory. Otherwise”not directory”.

read -p "enter directory name :   " directory 

if [[ -d $directory ]]; then echo "Great "
else echo  "not a regular directory "
fi



# 22.write a script that requests the name of a file or directory and check if it is an
# executable, Echos “it’s executable” if it’s executable otherwise “not executable”

read -p "enter file name :   " file 

if [[ -x $file ]]; then echo "its executable "
else echo  "not executable "
fi



# 23.Write a Bash script that takes a filename as input and displays whether the file is
# empty or not.

read -p "enter file name :   " file 

if [[ -s $file ]]; then echo "file is not empty"
else echo  "file is empty "
fi





# 24.Write a Bash script that takes a file name as input and displays whether its a
# regular file, a directory, otherwise echos “other type”.

read -p "Enter file name : " file 



if [[ -f $file ]]; then echo "regular file"
elif [[ -d $file ]]; then echo "directory"
else echo "other type"
fi

# 25.Develop a Bash script that takes a word as input and displays whether its length
# is even or odd.

read -p "Enter word : " word 

if ((${#word} % 2 == 0)); then echo "words length is even "
else echo "words length is odd"
fi





# 26.Write a Bash script that takes a number as input and displays whether it falls in
# the range of 10 to 20 (inclusive).

read -p "Enter number : " number 

if [[ $number -ge 10 && $number -le 20 ]]; then echo "number is within the range "
else echo "number is outside the range "
fi



# 27.Write a Bash script that takes a number as an external argument and displays
# whether it falls in the ranges: 0-10, 11-20, 21-30, or greater than 30.


case $1 in 

[0-9]|10) echo "number is within the range 0-10 " ;; 
1[0-9]|20) echo "number is within the range 11-20" ;;
2[0-9]|30) echo "number is within the range 21-30" ;;
*) echo "number is greater than 30 " ;;  
esac 



# 28.Write a Bash script that takes a username and a password as external
# arguments. The script should display whether the login attempt is successful
# (username is "admin" and password is "secret") or not.
if [[ $1 == "admin" && $2 == "secret" ]]; then echo login attempt successful 
else  echo login attempt failed 
fi




# 29.Create a Bash script that takes an integer as an external argument and displays
# whether the number is odd or divisible by 5.

if (( $1%5 == 0 || $1%2==1 )); then echo "number is odd or divisible by 5"
fi



# 30.Create a Bash script that takes a temperature in Celsius as input and converts it
# to Fahrenheit using the bc command.
## celsius to fahrenheit (c*9/5)+32 

read -p "enter temperature:  " temp 
feh= $(echo " scale=5 ; ( $temp * 9/5 ) + 32 "| bc   )
echo $feh





# 31.Write a Bash script that takes a persons weight (in kilograms) and height (in
# meters) as command-line arguments. The script should calculate their Body
# Mass Index (BMI) and classify it according to the following ranges:
# BMI < 18.5: Underweight
# 18.5 <= BMI < 24.9: Normal weight
# 24.9 <= BMI < 29.9: Overweight
# BMI >= 29.9: Obesity

#if (( $(bc <<< "$bmi < 18.5") )); then


read -p "enter your weight " weight 
read -p "enter height " height 

bmi=$(echo "scale=20; $weight / ($height * $height) * 10000 " | bc) 

if (( $( bc <<< "$bmi < 18.5 "))) ; 

  then echo "Underweight"
elif (( $( bc <<< "$bmi < 24.9 && $bmi >= 18.5 "))) ; then echo " Normal weight "
elif (( $(bc<<< "$bmi < 29.9 && $bmi >= 24.9 "))) ; then echo "Overweight" 
elif (( $(bc<<< "$bmi >=29.9" ))) ; then echo "Obesity" 

fi


'

# 32.Write a script that display numbers from 1 to 5 line by line (hint: While)







# 33.Write a Bash script that uses a while loop to print the numbers from 10 down to 1
# 34.Write a Bash script that uses a while loop to prompt the user to enter a number,
# and then prints the square of that number.
# 35.write a while loop that echoes welcome and the iteration number (for example,
# welcome 1, welcome 2…) runs 5 times, the print should start at 1 and finish at 5.
# 36.create a while loop which echoes welcome and the iteration number and runs 5
# times . The printout should start at 4 and finish at 0.
# 37.Write a while loop that prints the first 10 even numbers.