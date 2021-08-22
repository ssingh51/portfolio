#!/bin/bash 
      
read -p "Type the name of the folder you would like to copy: " week2   #Determine if the name is a valid directory 
      
if [ -d "$week2" ]; then  #copy it to a new location 
      
read -p "Type the name of the destination folder: " week3 # copy the folder and its contents using 'r option to recursively copy contents to the destination folder'
      
cp -r "$week2" "$week3" 
      
else   #otherwise, print an error 
    
echo "I couldn't find that folder." 
      
fi 

exit 0     