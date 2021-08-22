#!/bin/bash
echo "what is the secret?"
read -s
secret='deep' #Don't tell anyone!

#if the user types in the correct secret, tell them they got it right!

if [ "$secret" = $REPLY ]; then

    echo "You got it right!"

    correct=true

else     echo "You got it wrong :("

    correct=false

fi

read  -s -p "what's the secret code?"
echo


case $correct in


true)

    echo "you have unlocked the secret menu!"

    #TODO: add a secret menu for people in the know.

    PS3='Choose your favorite food: '
foods=("Pizza" "Pho" "Tacos" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "Pizza")
            echo "Americans eat roughly 100 acres of $fav each day!"
        # optionally call a function or run some code here
            ;;
        "Pho")
            echo "$fav is a Vietnamese soup that is commonly mispronounced like go, instead of duh."
        # optionally call a function or run some code here
            ;;
        "Tacos")
            echo "According to NationalTacoDay.com, Americans are eating 4.5 billion $fav each year."
        # optionally call a function or run some code here
        break
            ;;
    "Quit")
        echo "User requested exit"
        exit
        ;;
        *) echo "invalid option $REPLY";;
    esac
done

    ;;


    *)

    echo "Go Away!" #people who get it wrong need to be told to go away!

    ;;

esac