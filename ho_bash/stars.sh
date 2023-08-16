#!/bin/bash 
: '
size=20

row=1
while [ $row -le $size ]; do
    
    column=1
    while [ $column -le $size ]; do
        if [ $row -eq 1 ] || [ $row -eq $size ] || [ $column -eq 1 ] || [ $column -eq $size ]; then
            echo -n "*"
        else echo -n " "
        fi
        let "column=column+1"
    done
    
   
    echo
    let "row=row+1"
done

'

: '

  #if [ $row -eq 1 ] || [ $row -eq $size ] || [ $column -eq 1 ] || [ $column -eq $size ]; then
size=5

for (( i=1; i<=size; i++)) ; do
   # for that prints the spaces
    for (( x = $(( size - i )); x>0; x--)) ; do
    echo -n " "

    done
    #for that prints *
    for (( j=i ; j>0 ; j--)) ; do 
    if (())
    echo -n "*"
    
    
    done
 echo 
done

'

: '
size=5
i=1
while ((i <= size)); do
    j=$i
    while ((j > 0)); do
        echo -n "*"
        j=$((j - 1))
    done
    echo
    i=$((i + 1))
done

'



