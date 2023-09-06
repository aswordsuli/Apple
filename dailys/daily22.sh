

def stars_func17(size):
    row=1
    left=size-1
    right=size+1
    while row <= size :
        col=1
        while col <= size*2 :
            
            if row == 1 and col == size :
                print("*",end="")   
            elif (row != 1 and (col == left or col == right))  or row == size :
                print("*",end="")
            else : 
                print(" ",end="")
            col+=1
        row+=1
        left-=1 
        right+=1
        print()    

def stars_func16(size):
    row = 1
    stars_count = 1

    while row <= size:
        spaces = size - row
        
    
        while spaces > 0:
            print(" ", end="")
            spaces -= 1


        
        stars = 1
        while stars <= stars_count:
            print("*", end="")
            stars += 1

        

        
        spaces = size - row
        while spaces > 0:
            print(" ", end="")
            spaces -= 1

        print()  
        row += 1
        stars_count += 2




size=int(input("enter a number "))  
stars_func16(size)

size=int(input("enter a number "))  
stars_func17(size)      






# while IFS= read -r line; do
#     echo "${line^^}" 
# done < daily22.sh
