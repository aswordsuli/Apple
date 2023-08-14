#!/bin/bash 


: '

Linux:




# 1. Create the library as shown in the image above
mkdir -p aws_library/{ec2/{instances},elb/{load_balancers,volumes},rds/{clusters,instances},lambda/{buckets,objects,targets}}


# 2. Show the library as tree.

tree 
# 3. Rename “lambda” to “s3” in absolute path
mv /home/ahmad/Desktop/Apple/aws_library/lambda /home/ahmad/Desktop/Apple/aws_library/s3

# 4. Move targets to “elb” in relative path.

mv lambda/targets elb/ 
# 5. Move “volumes” to “ec2”

mv volumes ../ec2


# 6. Copy the dir “instances” to “aws_library”

cp instances .. 


# 7. Create a new file names “clusters/clusters.txt”

touch clusters/clusters.txt 


# 8. Echo “where is my softlink” to “clusters/clusters.txt”
echo "where is my softlink to clusters/clusters.txt " > clusters/clusters.txt 


# 9. Create a symbolic link named "mylink.txt" that points to the file “clusters/clusters.txt” in
# the same directory.

ln -s clusters/clusters.txt mylink.txt


# 10. List the content of clusters.

ls clusters

# 11. Check the available memory on the system in a human-readable format.

free -h

# 12. Remove aws_library

rm -r aws_library 

'

#################################################################################################



#Bash scripting:






# 1. Write a scritthat prompts the user to enter a letter, and then checks whether the letter
# is a vowel.

: '

read -p "Enter a letter: " letter

case "$letter" in
    [aeiouAEIOU]) echo "The entered letter  is a vowel." ;;
    *) echo "The entered letter  is not a vowel." ;;
esac

'


# 2. Write a script that prompts the user to enter a number between 1 and 10, and then
# checks whether the number is within the specified range.
: '

read -p "Enter a number " num 

if [[ $num =~ ^-?[0-9]+$ ]]; then 

    case "$num" in
    [1-9]10) echo "number is in range 1-10";;
    *) echo "number is in range";;
    esac
else
    echo "wrong input"
fi

'


# 3. Write a script that prompts the user to enter a password, and then checks whether the
# password is at least 8 characters long.
: '

read -sp "enter a password:  " pass 

if [[ ${#pass} -le 7  ]] ; then echo "password has to be 8 letters at least"
else echo "password accepted"
fi

'


# 4. Write a script that prompts the user to enter a password, and then checks whether the
# password meets the following criteria: (1) at least 8 characters long, (2) contains at least
# one uppercase letter, (3) contains at least one lowercase letter, and (4) contains at least
# one number. If yes echo "The password meets the criteria", otherwise echo "The
# password does not meet the criteria"

: '
#!/bin/bash

read -sp "Enter a password: " pass

if [[ ${#pass} -ge 8 && $pass =~ [A-Z] && $pass =~ [a-z] && $pass =~ [0-9] ]]; then
    echo "The password meets the criteria."
else
    echo "The password does not meet the criteria."
fi

'




# 5. Write a script that prompts the user to enter a username, and then checks whether the
# username is in a list of authorized users.
# Authorized_users are “alice", "bob" & "charlie"

: '

list=("alice""bob""charlie")

read -p "enter a username:  " user

case ${list[@]} in 
*$user*) echo "username in the list " ;;
*) echo "username not in the list";;
esac

'

# 6. Write a Bash script that prompts the user to enter a username. If the username is
# "admin", prompt the user to enter a password. If the entered password is "password123",
# display "Access granted". If the password is incorrect, display "Access denied".
# (( attach a pseudocode flowchart for the script ))
# correct_username="admin"
# correct_password="password123

################################
#################################
################################
################################
: '


 pseudocode flowchart:
 Prompt user for username
Read username

If username is admin then
    Prompt user for password
    Read password

    If password is password123 then
        Display Access granted
    Else
        Display Access denied
    End If
Else
    Display Sccess denied
End If


'
################################
################################
################################
################################
: '

correct_username="admin"
correct_password="password123"

read -p "Enter a username: " username

if [ "$username" == "$correct_username" ]; then
    read -sp "Enter a password: " password
    echo

    if [ "$password" == "$correct_password" ]; then
        echo "Access granted."
    else
        echo "Access denied."
    fi
else
    echo "Access denied."
fi

'


# 7. Write a Bash script that prompts the user for a filename and checks if the file exists in
# your current directory. If the file exists, prompt the user for confirmation to delete it. If the
# user confirms, delete the file.
# (( attach a pseudocode flowchart for the script ))




################################
################################
################################
################################
: '
pseudocode flowchart
Prompt user for filename
Read filename
If file with filename exists then
    Prompt user for confirmation to delete
    If user confirms then
        Delete the file
        Display "File deleted"
    Else
        Display "File not deleted"
    End If
Else
    Display "File does not exist"
End If


'

######################################################################3333
: '
read -p "enter file name:  " file 
if [[ -e $file ]]; then 
    read -p "are you sure you want to delete the file Y/N " x
    if [[ $x == "Y" ]]; then
    rm  $file 
    echo "File deleted"
    else echo "file not deleted"
    fi
else echo "File does not exist"
fi 
'


# 8. Write a Bash script that takes a string as input and replaces all occurrences of the letter
# a with the letter b.


: '

read -p "enter a string" str
echo ${str//a/b}

'

# 9. Create a Bash script that prompts the user to enter an email address. If the entered
# email address contains the "@" symbol and ends with ".com", display "Valid email
# address". Otherwise, display "Invalid email address".

: '
read -p "Enter email address" email 

case $email in 
*@*".com") echo "Valid email address";;
*) echo "Invalid email address";;
esac 

'




# 10. Write a script that counts the number of files in a directory and its subdirectories.
# (( attach a pseudocode flowchart for the script )

: '

'



read -p "Enter directory name " dir 
countF=$( find "$dir" -type f | wc -l )
countD=$( find "$dir" -type d | wc -l )
echo " $countF files and $countD directories" 


