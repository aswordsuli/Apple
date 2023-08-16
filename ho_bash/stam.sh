#!/bin/bash 


size=5

for ((i = 1; i <= size; i++)); do
    for ((j = 1; j <= size; j++)); do
        if ((i == 1 || i == size || j == 1 || j == i || j == size)); then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo
done
