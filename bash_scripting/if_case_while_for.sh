#!/bin/bash 


# 1. Receive an argument and validate if it’s only one argument, if
# trues echos “Great, just one” otherwise echos “error”

: '

case $# in 
1) echo "Great";;
*) echo "Error";;
esac 
'


# 2. Receive two arguments and validate it, if trues echos “Great,only
# two” otherwise echos “error”
: '

case $# in 
2) echo "Great,only two";;
*) echo "Error";;
esac 

'


# 3. Receive arguments and validate if it ranges between 2 - 4 , if
# trues echos “Great” otherwise echos “error”
: '
case $# in 
[2-4]) echo "Great";;
*) echo "Error";;
esac 
'
# 4. check if external argument value less than 10 . If it does less
# than 10 echo "you have entered the correct argument” otherwise echo
# “False”.

: '
case $# in 
[0-9]) echo "Great";;
*) echo "False";;
esac 

'

# 5.create a script that asks the user for an input of his age and check
# if the age is greater than 18 echo you are legally allowed in.
# otherwise echo you are not allowed .


: '
read -p "Enter your age" age 

if [[ $age -gt 18 ]]; then echo "you are legally allowed in "
else echo "you are not allowed"
fi
'

# 6. Ask the user to enter a password. Check if the password matches
# “123”. If it matches echo verified. If not, echo denied.(use silent
# mode with read )

: '

read -sp "Enter your password" pass

case $pass in 
123) echo "verified";;
*) echo "denied" ;;
esac

'

# 7. Write a script that request the user to enter two numbers and
# compare between them, if they are equal echos “equal” otherwise echos
# “not equal”

: '
read -p "enter first number:  " num1
read -p "enter second number: " num2

if [[ $num1 =~ ^-?[0-9]+$ && $num2 =~ ^-?[0-9]+$ ]]; then

        if [[ $num1 -eq $num2 ]]; then echo "numbers are equal "
    else echo "not equal "
    fi
else echo "wrong input"
fi

'

# 8. write a script that request the name of a file or directory (in
# your current directory) and check if it is a regular file/dir .
# Echos “Great” if it’s regular file otherwise “not regular”

: '

read -p "enter file name " file 

if [[ -f $file]]; then echo "file is regular file "
else echo "not regular file"
fi

'


# 9.write a script that request the name of a file or directory and
# check if it is a directory, Echos “Awesome” if it’s directory.
# Otherwise”not directory”.

: '

read -p "enter file name " file 

if [[ -d $file]]; then echo "file is directory "
else echo "not directory"
fi

'



# 10.write a script that request the name of a file or directory and
# check if it is a executable, Echos “wow” if it’s executable
# otherwise “not executable”.

: '

read -p "enter file name " file 

if [[ -x $file]]; then echo "wow "
else echo "not executable"
fi

'



# 11.Write a script that request the name of a file or directory and
# check if it is a readable and executable .if true Echos “yay”
# otherwise echo “NOT X AND R”

: '
read -p "enter file name " file 
if [[ -e $file ]]; then 

    if [[ -x $file && -r $file ]]; then 
    echo "yay"
    else echo "not X and Y "

    fi
else echo "file does not exist"
fi
'


# 12.Write a script that check the name of a file and check if it is
# empty. Echos “empty file” otherwise “Not empty”.

: '
read -p "enter file name " file 
if [[ -e $file ]]; then 

    if [[ -s $file ]] ; then echo "not empty "
    else echo  "File is empty"
    fi
else echo "file does not exist"
fi
'


# 13. Write a script that validates that a number is greater than 10, if
# so it echos the user “very good” otherwise “it’s less than 10” .
# notice: the number should be enter first as an external argument,
# otherwise (wasn’t given) the script should request from the user to
# enter a number.

: '

if [[ -z  $1 ]] ; then

    read -p "number wasnt given please  enter a number " num 
    if [[ $num -gt 10 ]]; then echo "very good"
    else echo "number is less than 10 "
    fi 
elif [[ $1 -gt 10 ]]; then echo "very good"
else echo "number is less than 10 "    
fi

'


# 14. Write a script that validate that a word is count more than or
# equal to 5 letters, if true echos “Great”, otherwise echos “Less than
# 5 letters”. Pay attention, if the user enter a value that is not
# letters and requests from the user to enter a validated word.

: '

while true ; do
read -p "enter a word " word 

if [[ $word =~ ^[[:alpha:]]+$ ]]; then 
    if [[  ${#word} -ge 5  ]]; then echo "Great" 
    break 
    else echo "less than 5 letters " 
    break
    fi
else echo "please enter valid word " 
fi
done    
'



# 15. Build a menu for restaurant with prices. When the customer enter
# the kind of food he wants, echos the selected meal and price, if
# the user selects a meal not in the menu echos “ error ” . (Burger = 5
# $ , Hotdogs = 3$ , icecream 1.5, Falafel= 9 $ ).
# (the script will show the menu the user will choose the option, get
# the answer and the script end).

: '
select x in burger hotdog icecream flafel
 do 
    case $x in 
    
    burger) 
        echo "$x = 5$"
        break  
        ;; 
    hotdog)
     echo "$x = 3$" 
     break 
     ;; 
    icecream) 
    echo "$x = 1.5$" 
    break ;; 
    flafel) 
    echo "$x = 9$" 
    break ;;
    *) echo "error" ;;

    esac


done 

'




# 16. Write a script that receive a number from 1 - 7 as an arg , Each
# number outputs a day in the week. For example ( 1 = Sunday etc..) , if
# the user enter not a relevant number echo “error”.

: '
case "$1" in
    1) echo "Sunday";;
    2) echo "Monday";;
    3) echo "Tuesday";;
    4) echo "Wednesday";;
    5) echo "Thursday";;
    6) echo "Friday";;
    7) echo "Saturday";;
    *) echo "Error";;
esac

'


# 17. Write a script that receive a number from 1 - 12, Each number
# outputs month in the year. For example ( 1 = January etc …) , if
# the user enter not relevant number echo “error”.
: '
case "$1" in
    1) echo "January";;
    2) echo "February";;
    3) echo "March";;
    4) echo "April";;
    5) echo "May";;
    6) echo "June";;
    7) echo "July";;
    8) echo "August";;
    9) echo "September";;
    10) echo "October";;
    11) echo "November";;
    12) echo "December";;
    *) echo "Error";;
esac

'



# 18. Write a script that request from the user to select his favorite
# color from the following list: 1 - Blue 2 - Red 3 - Yellow 4 - Green.
# If 1, echos “ Blue is a primary color.” if 2, echos “Red is a primary
# color.", if 3, echos “Yellow is a primary color”. if 4, echos “Green
# is a secondary color.”. otherwise echos “This color is not available.”

: '

select x in Blue Red Yellow Green 
do 

    case $x in 
    Blue) echo "$x is a primary color  "
    break ;;
    Red) echo "$x is a primary color  "
     break ;;
    Yellow) echo "$x is a primary color  "
    break ;;
    Green) echo "$x is a primary color  "
    break ;;
    *) "this color is not availabnle "
    esac



done 

'
# 19. Write a script receive a month (as arg) and outputs the number of
# days. There are three possible answers. For April , June, September,
# November echos “.There are 30 days in (selected month)” for January
# ,March , May , July , August , October , December. echos “There are 30
# days in (selected month).” for January , March , May , July , August ,
# October , December echos “There are 31 days in (selected month)”
# otherwise echos “error.


: '

case "$1" in
    "April" | "June" | "September" | "November")
    
     echo "There are 30 days in $1." ;;
    
    "January" | "March" | "May" | "July" | "August" | "October" | "December") 
    
     echo "There are 31 days in $1." ;;
    
    "February")
        echo "February can have 28 or 29 days depending on whether it's a leap " ;;
    *)
        echo "Invalid month." ;;
esac

'



# 20. Write a script which prints the words: “This is a count number”
# followed by the count number as a variable 10 times from count 1 to
# 10. (use while loop)
# 21. Write a script which prints the words: “This is a count number”
# followed by the count number as a variable 10 times from count 1 to
# 10. (use for loop)
# 22. Write a script which prints the words: “This is a files in the
# (your current directory) is: followed by the files in the directory
# using for loop .
# write a script which iterates over the files and directories in
# current dir.
# for each item it will print whether it is a regular file and
# executable, regular and not executable, a directory or somethig else
# each line will be "the [FILE_NAME/DIR] in [NAME_OF_CURRENT_DIR] is
# [ONE_OF_THE_ABOVE]"
# 23. Build a menu for a restaurant with prices. When the customer
# enter the kind of food he wants, echos the selected meal and price,
# if the user selects a meal not in the menu echos “ error ” . (Burger
# = 5 $ , Hotdogs = 3$ , icecream 1.5, Falafel= 9 $ ).
# (the script will show the menu, the user will choose the option, get
# the answer, and menu will show again until user ask to exit) (use
# SELECT LOOP in order to make a repeatable menu including exit option)



