#!/bin/bash 


# 1. Exercise_1 - Write a shell script that prints “Shell Scripting is
# Fun!” on the screen
# 2. Exercise_2 - Modify the shell script from exercise 1 to include a
# variable. The variable will hold the contents of the message
# “Shell Scripting is Fun!”


# 3. Exercise_3 - Store the output of the command “hostname” in a
# variable. Display “This script is running on _.” where “_” is the
# output of the “hostname” command.
: '
var=$HOSTNAME    

echo "This script is running on  $var"
'

# 4. Exercise_4 - Write a shell script to check to see if the file
# “file_path” exists. If it does exist, display “file_path
# passwords are enabled.” Next, check to see if you can write to
# the file. If you can, display “You have permissions to edit
# “file_path.””If you cannot, display “You do NOT have permissions
# to edit “file_path””
















# 5. Exercise_5 - Write a shell script that displays
# “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the screen with
# each appearing on a separate line. Try to do this in as few lines
# as possible.


# 6. Exercise_6 - write a shell script that prompts the user for a
# name of a file or directory and reports if it is a regular file,
# a directory, or another type of file. Also perform an ls command
# against the file or directory with the long listing option.






# 7. Exercise_7 - Modify the previous script to that it accepts the
# file or directory name as an argument instead of prompting the
# user to enter it.
# 8. Exercise_8 - Modify the previous script to accept an unlimited
# number of files and directories as arguments.


# 9. Exercise_9 - Write a shell script that displays, “This script
# will exit with 0 exit status.” Be sure that the script does
# indeed exit with a 0 exit status.

trap  "echo This script will exit with 0 exit status." 1

echo $$ 

echo "__________-"
sleep 10
echo "_________"
sleep 1
exit 2 



# 10. Exercise_10 - Write a shell script that accepts a file or
# directory name as an argument. Have the script report if it is
# reguler file, a directory, or another type of file. If it is a 
# directory, exit with a 1 exit status. If it is some other type of
# file, exit with a 2 exit status.
: '
trap "exited with num1 " 1
trap "exited with num2 " 2

read -p "type file name:   " file 

if [[ -f $file ]]; then echo "reg file " ; exit 1
elif [[ -d $file  ]]; then echo "dir" ; exit 2 
else echo " other type  " ; exit 2 
fi 
'








# 11. Exercise_11 - Write a script that executes the command
# “cat/etc/shadow”. If the command return a 0 exit status, report
# “command succeeded” and exit with a 0 exit status. If the command
# returns a non-zero exit status, report “Command failed” and exit
# with a 1 exit status.







# 12. Exercise_12 - Write the script that renames files based on
# the file extension. Next,It should ask the user what prefix to
# prepend to the file name(s). By default, the prefix should be the
# current date in YYYY-MM-DD format. If the user simply press
# enter,the current date will be used. Otherwise,whatever the user
# entered will be used as the prefix. Next,it should display the
# original file name and new name of the file. Finally,it should
# rename the file.
# 13. Exercise_13 - Modify the script from the previous exercise. Make
# the “file_count” function accept a directory as an argument.
# Next, have the function display the name of the directory
# followed by a colon. Finally display the number of files to the
# screen on the next line. Call the function three times. First on
# the “/etc” directory, next on the “/var” directory and finally on
# the “/usr/bin” directory.
# 14. Exercise_14 - Write the shell script that renames all files
# in the current directory that end in “.jpg” to begin with today’s
# date in the following format: YYYY-MM-DD. For example, if a
# picture of my cat was in the current directory and today was
# October 31,2016 it would change name from “mycat.jpg” to “2016–
# 10–31-mycat.jpg”.
# 15. Exercise_15 - Write the script that renames files based on
# the file extension. Next,It should ask the user what prefix to
# prepend to the file name(s). By default, the prefix should be the
# current date in YYYY-MM-DD format. If the user simply press
# enter,the current date will be used. Otherwise,whatever the user
# entered will be used as the prefix. Next,it should display the
# original file name and new name of the file. Finally,it should
# rename the file.
# 16. Exercise_16 - Created the start-up script for an application
# (service) start and stop (including validation that the service
# did the requsted operation).
# 17. Exercise_17 - Write the shell script that displays one
# random number on the screen and also generates a system log 
# message with that random number.Use the “user” facility and
# “info” facility for your messages. (hint read about logger)
# 18. Exercise_18 - Modify the previous script to that it uses a
# logging function. Additionally, tag each syslog message with
# “randomly” and include process ID. Generate a 3 random numbers.
# 19. Exercise_19 - Write a shell script that exits on error and
# displays command as they will execute, including all expansions
# and substitutions. Use 3 ls command in your script. Make the
# first one succeed, the second one fail, and third one succeed. If
# you are using the proper options, the third ls command not be
# executed.
# 20. Exercise_20 - Modify the previous exercise so that script
# continuous, even if an error occurs. This time, all three ls
# command will execute.