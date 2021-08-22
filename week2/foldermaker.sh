#!/bin/bash

echo "Enter foldername" # ask the user to type a folder name
read foldername
mkdir $foldername

read -sp "Enter password" pass_var # ask the userto type a secret password (hide that input)
echo $pass_var >./$foldername/secret.txt # save the user's password n a file called  'secret.txt' inside the folder the user chose