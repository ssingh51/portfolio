#!/bin/bash

RED='\e[1;31m'

NC1='\e[0m'

printf "${RED}Enter Password:${NC1}";

read -s pass_var

var_hash=$(echo $pass_var | sha256sum) 
hashfile="secret.txt"
myvariable=$(cat "$hashfile")
#echo "1. $var_hash"
#echo "2. $myvariable"
if [ "$var_hash" == "$myvariable" ]
then
echo "Access Granted"
exit 0
else
echo "Access Denied"
exit 1
fi