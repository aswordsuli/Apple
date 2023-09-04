#!/bin/bash

size=11
Y=1

while [[ $Y -le $size ]]; do
    X=1

    while [[ $X -le $size ]]; do
        if [[ $Y -eq 1 ]] || [[ $Y -eq $size ]] || [[ $X -eq 1 ]] || [[ $X -eq $size ]]; then 
            echo -n "*"
        elif [[ $Y -eq $X ]] || [[ $X -eq $((size - Y + 1)) ]]; then
             echo -n "*"
        else
             echo -n " "
        fi

     let X++
    done
    echo
    let Y++
done
