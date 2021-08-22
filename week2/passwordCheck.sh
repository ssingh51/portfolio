#!/bin/bash
read -sp "Enter password; " pass_var

echo $pass_var | sha256sum >./secret.txt
var_hash=$(echo $pass_var | sha256sum)
hashfile="secret.txt"
myvariable=$(cat "$hashfile")
if [ "$var_hash" == "$myvariable" ]
then
echo "Access Granted"
exit 0
else
echo "Access Denied"
exit 1
fi