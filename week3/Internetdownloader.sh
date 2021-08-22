#!/bin/bash

while :; 

do

    read -p "Please type the URL of a file to download or type \"Exit\" to quit:" url

        if [ "$url" == "exit" ]; then

        break;

        fi

            read -p "Input the directory where you would like to save: " directory

            filename=$(eval echo $directory)

            echo $filename

            wget -P $filename $url 

done 