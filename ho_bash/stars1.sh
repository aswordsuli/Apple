
#!/bin/bash

size=5  # גודל המשולש
row=1

while [ $row -le $size ]; do
    spaces=1
    while [ $spaces -le $((size - row)) ]; do
        echo -n "  "
        let "spaces++"
    done

    stars=1
    while [ $stars -le $row ]; do

        if [ $stars -eq 1 ] || [ $stars -eq $row ] || [ $row -eq $size ] ; then
            echo -n "* "
        else
            echo -n "  "
        fi
        let "stars++"
    done

    echo
    let "row++"
done



