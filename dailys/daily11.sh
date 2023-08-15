#!/bin/bash 


# 1. Create a Bash script that prompts the user to enter an email address. If the entered
# email address contains the "@" symbol and ends with ".com", display "Valid email
# address". Otherwise, display "Invalid email address".

: '

read -p "enter email :  " e 

case $e in 
*@*".com") echo  "valid email address";;
*) echo  "invalid email" ;;
esac

'


# 2. Create a user named "testuser" and set the login shell to /bin/bash.
# As the "testuser," create a shell script named login_shell_demo.sh that demonstrates a
# login shell behavior. The script should:
# Display a welcome message with your username.
# Show the current date and time.
# List the contents of the user's home directory.


: '
#sudo adduser testuser
#sudo - testuser 
echo "Welcome, $USER!"
echo "Current date and time: $(date)"
echo "Contents of home directory:"
ls -l ~
'


# 3. Create a new file named input.txt and echo “hello world” then Write a while loop that
# reads lines from a file named input.txt and prints each line in uppercase.

: '
while IFS= read -r line; do
        echo "${line^^}"
    done < input.txt
'




# 4. Write a while loop that reads lines from a file named names.txt and prints out only the
# names that begin with the letter "A".
# Names.txt
# Ahmad Assadi
# Shlomi Peretz
# Antonio Nassar
# Nadav Cohen
# 123456789
# Shakira
# Enrique Iglesias
# Aviv Kaitz

: '
while IFS= read -r line ; do 

case $line in 
A*) echo $line ;;
esac
done < names.txt
'
# if [[ "$line" == A* ]]; then
#   echo "$line"
#  fi

# 5. Write a while loop that prompts the user to enter a number between 1 and 10. The loop
# should continue until the user enters a valid number, and then print out the number of
# attempts it took the user to enter a valid number.

: '

count=0 

while true ; do 

read -p "enter a number between 1 and 10 " num 

if [[ $num =~ ^[1-9]$|^10$ ]]; 
then break 
else 
(( count++ ))
fi


done

echo "valid number entered after $count attempts "

'

# 6. Write a while loop that prompts the user to enter a sentence and prints out only the
# words that contain the letter "e".


: '
read -p "enter a sentence " sentence 

output=""
for word in $sentence ; do 
if [[ $word == *e* ]] ; then
output="$output $word "
fi
done

echo $output

'

# 7. Write a while loop that reads lines from a file named input.txt and prints out only the lines
# that are longer than 10 characters.

: '

while IFS= read -r line ; do 

if [[ ${#line} -ge 10 ]] ; then
echo "$line"
fi
done < input.txt

'


# 8. Write a while loop that prompts the user to enter a name and prints out the name in
# uppercase, but only if the name is longer than 5 characters.

: '


while true ; do 
read -p "enter a name " name 
case "$name" in 
?????*) 
echo "${name^^}" ;;
esac
done

'


# 9. Create a new dir named “dir”. Create new files named “file1.txt” to “file9.txt” in “dir”
# Rename the file to “document1” to “document9” using loops.
: '

for i in {1..9} ; do 
mv dir/file${i}.txt dir/document${i}.txt

done

'



# 10. Write a script that uses an `until` loop to repeatedly prompt the user to guess a number
# between 1 and 100. Provide hints like "higher" or "lower" based on the user's guesses,
# until they guess the correct number. The correct number is 77
: '

read -p "enter a guess"

until [[ $num -eq 77 ]]; do

    if [[ $num -lt 77 ]]; then
        echo "higher"
        read -p "enter a guess: " num 
    elif [[ $num -gt 77 ]]; then
        echo "lower" 
        read -p "enter a guess: " num
    else echo "you guessed the correct num"
    fi 

done

'

# 11. Write a script that prompts the user to select a day of the week using the following
# options:
# 1. Monday
# 2. Tuesday
# 3. Wednesday
# 4. Thursday
# 5. Friday
# 6.. Saturday
# 7. Sunday
# Based on the user's input, display a message indicating whether it's a weekday or a
# weekend day or invalid choice

: '

select day in Sunday Monday Tuesday Wednesday Thursday Friday Saturday ; do 

 case $day in 
"Sunday" | "Monday" | "Tuesday" | "Wednesday" | "Thursday" ) echo "weekday" ;;
"Friday" | "Saturday" ) echo "weekend"  ;;
*) echo "Invalid choice" ;;
esac


done 

'