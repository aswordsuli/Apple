#!/bin/bash 

 size=5
 row=1
 stars_count=1
 while [[ $row -le $size  ]]; do
 
 
 spaces=$((size-row))
 stars=1
    while [[ $spaces -gt 0 ]]; do
     echo -n " "
     let spaces--
    done



    while [[ $stars -le $stars_count ]]; do
     echo -n "*"
     let stars++
    done
   
    
    
     spaces=$((size-row))
    while [[ $spaces -gt 0 ]]; do
     echo -n " "
     let spaces--
    done


 let stars_count=stars_count+2
 let row++
 echo 
done 
 
