#!/bin/bash


# 1. Create a Bash script that takes an animal name as an external argument. The script
# should display the sound that the animal makes based on the following rules:
# "dog": Woof
# "cat": Meow
# "cow": Moo
# For other animals: Unknown
# **** You have to Write two scripts, the first one using if conditions , the second
# using case statements.

: '
case $1 in 
    "dog") echo "dog": woof;;
    "cat") echo "cat":meow;; 
    "cow") echo "cow":Moo;; 
    *) echo "Unknown"
    esac 

'

: '
if [[ "$1" == "dog" ]]; then
    echo "dog: woof"
elif [[ "$1" == "cat" ]]; then
    echo "cat: meow"
elif [[ "$1" == "cow" ]]; then
    echo "cow: Moo"
else
    echo "Unknown"
fi

'

# 2. Develop a Bash script that takes a word as input and displays whether its length is even
# or odd.
: '
read -p "Enter word : " word 

if ((${#word} % 2 == 0)); then echo "words length is even "
else echo "words length is odd"
fi
'



# 3. Write a while loop that prints the first 10 even numbers.
# *** Start counting from the number 1.
: '


even_count=0
curr_count=1
while [[ $even_count -lt 10  ]]; do

    if  (( $curr_count%2==0 )); then
    echo "$curr_count"
    (( even_count++ ))

    fi
   (( curr_count++ )) 
   
   done

   '