#!/bin/bash
    echo "Enter two numbers :"

read a
read b
 
# Input type of operation
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

case "$ch" in

1)

var=$(echo $(( $a + $b)))
echo -e "\e[1;31m $var \e[0m"
;;

2)

var=$(echo $(( $a - $b)))
echo -e "\e[1;34m $var \e[0m"
;;

3)

var=$(echo $(( $a * $b)))
echo -e "\e[1;32m $var \e[0m"
;;

4)

var=$(echo $(( $a / $b)))
echo -e "\e[1;33m $var \e[0m"
;;

esac

exit 0