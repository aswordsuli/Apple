#!/bin/bash 
################################      LINUX         #################################

# 1. Create the library as shown in the image above.
    #mkdir -p zoo/{predatory/{table,leopard},birds/{parrot,chair}}
# 2. Display the library as a tree.
    #tree zoo
# 3. Go to “Birds” in absolute path.
    #cd zoo/birds
# 4. Go to “leopard” on a relative path.
    #cd leopard
# 5. Go to “parrot” in absolute path using tilde.
    #cd ~/zoo/birds/parrot
# 6. Go back to “leopard” using “cd -”
    #cd -
# 7. From your working directory, rename “table” to “lion” in a relative path.
    #mv ../table/ ../lion 
# 8. From your working directory, rename “chair” to “owl” in a relative path.
    #mv ../../birds/chair/ ../../birds/owl
# 9. Go to “predatory” in a relative path.
    #cd .. 
# 10. Insert the following text to a new file named “pd.txt” by one command using “cat
# command”
    # echo 'The leopard is one of the five extant species in the genus Panthera.' >> pd.txt
# 11. Save the content of “pd.txt” to new file named “preda.txt” (( without using cp command ))
    # cat  pd.txt >> preda.txt
# 12. Delete “pd.txt”.
    #rm pd.txt
# 13. Copy the dir “parrot” to “birds” in a relative path.
    
# 14. Download the lion's image using the following link and save the image “lion.jpg” by one
# command.
   # curl -o lion.jpg https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg

# 16. Display the first 5 lines of a file named "data.txt".
    #head -n 5 data.txt
# 17. Search for a specific word, "Smith", in a file named "data.txt" using the grep command.
    #grep "Smith" data.txt 
# 18. Extract the first name and phone number from the file named "data.txt" and sort the
# output in reverse order.
    #cut -d ' ' -f 1,3 data.txt | sort -r
# 19. Extract the first three names and phone number from the file named "data.txt" in
# Ascending ordinary
    #cut -d ' ' -f 1,3 data.txt | sort -k1n  | head -n 3

#20. Count the number of files in a directory “zoo”, including subdirectories, using the find and
#wc commands.
    #find -type f | wc -l








    ################################           BASH SCRIPTING    #################################



###STARS
: '

read -p "enter a number :  "  num 

while [ $num -gt 0 ]; do
    
    for(( i=0; i<num; i++)); do
    echo -n "*"
    done
echo
let "num--"
done

'


######EMAIL VALIDATION 

: '
read -p "enter email : " email 

if [[ $email =~ .*"@".+.*".com" ]]; then
    echo "valid email "
else 
    echo "invalid email"    
fi

'


####################################     SUBNITTING   #################################


# 1. Enter the first valid host on the network that the host 172.25.166.146
# 255.255.255.0 is a part of:                                                 -172.25.166.1.-


# 2. Enter the first valid host on the network that the host 192.168.43.181
# 255.255.255.248 is a part of:                                               -192.168.43.177.-

# 3. Enter the first valid host on the network that the host 192.168.229.160
# 255.255.255.128 is a part of:                                              -192.168.229.129-

# 4. What is the Subnet Mask corresponding to a shorthand of /25             -255.255.255.128-

# 5. Enter the broadcast address for the network 10.30.212.0/22             -10.30.215.255-

# 6. What is the shorthand corresponding to a subnet mask of 255.254.0.0    -15-
# 7. What is the shorthand corresponding to a subnet mask of 255.255.255.192  -26-