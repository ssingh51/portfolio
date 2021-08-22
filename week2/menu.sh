#!/bin/bash 

./passwordCheck.sh

if [ $? -eq 0 ] ;

then

echo "1. Create a folder"
echo "2. copy a folder"
echo "3. set a password"
else
echo "Good bye"
exit 1
fi

read useroption

case $useroption in

1) 
./foldermaker.sh
;;
2)
./foldercopier.sh
;;
3)
./setpassword.sh
;;
*)
echo "Incorrect selection"
;;
esac
exit 0