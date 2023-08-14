#1. Write a Bash script that takes a filename as input and displays whether the file is
#empty or not.

: '

read -p "enter file name :  " file 
if [[ -s $file ]]; then echo "file is not empty "
else echo "file is empty "
fi

'

#2. Write a Bash script that takes a file name as input and displays whether it's a
#regular file, a directory, otherwise echos “other type”.

: '

read -p "enter file name :  " file 


if [[ -f $file ]]; then echo "file is regularfule"  
elif [[  -d $file  ]]; then  echo "file is a directory "  
else echo "other type " 
fi

'

#3. Create a Bash script that takes an integer as an external argument and displays
#whether the number is odd or divisible by 5.

: '

read -p "enter a number " num 

if (( $num%2==1 || $num%5==0  )) ; then echo "number is odd or dividable by 5 "
fi


'

#4. Write a Bash script that prompts the user to enter the length and width of a rectangle.
#Calculate and display the perimeter of the rectangle using the formula perimeter = 2 *
#(length + width).

: '

read -p "enter length " len 
read -p "enter width " wid 

per=$(echo "scale=10 ; 2*($len+$wid) "| bc )
echo $per 
'

# Bash script that chicks if external argument is int 


if [[ $1 =~ ^-?[0-9]+$ ]]; then
    echo "Argument is an integer."
else
    echo "Argument is not an integer."
fi


scrip