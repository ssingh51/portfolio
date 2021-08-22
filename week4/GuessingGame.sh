#!/bin/bash



#This function prints a given error in RED colour

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}



#This function will get a value between the 2nd and 3rd arguments

getNumber()

{  
    read -p "$1: "      #to get the input from the user

    while :; do

    if [[ $REPLY -lt $2 || $REPLY -gt $3 ]]; then


        printError "Input must be between $2 and $3"

    elif [ "$REPLY" -lt $4 ]; then
        
        echo "Too Low!"

    elif [ "$REPLY" -gt $4 ]; then
        
        echo "Too High!"
    
    elif [ "$REPLY" -eq $4 ]; then
        
        echo "Correct!"
        
    break;
    
    fi

    read -p "$1: "

    done

}



echo "this is the start of the script"

getNumber "please type a number between 1 and 100" 1 100 42

echo "Thank you!"