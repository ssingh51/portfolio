#!/bin/bash

myfile="filenames.txt"      #name of the file which need to be read line by line

echo "Start!"

IFS=$'\n'                   

for i in $(cat < "$myfile");        #for statement to go through the contents of the file

do

    echo "$i"
        echo "Hello"

if [ -d "$i" ];then                 #reading directory

    echo "$i is a directory";

else 

if [ -f "$i" ];then

    echo "$i is a file";

else

    echo "$i is not valid";

exit 1

fi

fi

done
