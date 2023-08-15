#!/bin/bash 

# 1. Write a script using for loops than counts from 1 to 10

: '
for ((  i=1 ; i < 11 ; i++  )); do 

echo $i


done

'

# 2. Write a script using for loops than counts from 1 to 10 using arrays.

: '
numbers=(1 2 3 4 5 6 7 8 9 10)

for x in ${numbers[@]} ; do 

echo $x 
done 

'
# 3. write a shell script using for loops that accepts unlimited external arguments of the
# name of a file or directory in your current directory and reports if it is a regular file, a
# directory, or another type of file.
: '

for i in "$@"; do
    if [ -e "$i" ]; then
        if [ -f "$i" ]; then
            echo "$i is a regular file."
        elif [ -d "$i" ]; then
            echo "$i is a directory."
        else
            echo "$i is another type of file."
        fi
    else
        echo "$i does not exist."
    fi
done

'






# 4. Create a dir named “log-files”
# Copy the files of /var/log/ that ends with log to “log-files”
# Add new files file1.txt && file2.txt to “log-files”
# Write a script using for loops that compress ( using gzip command ) only the files that
# ends with .log extension

mkdir -p log_files 

cp /var/log/*log log_files 

touch log_files/file{1,2}.txt 

for file in log_files/*.log ; do 
gzip "$file" 
done

