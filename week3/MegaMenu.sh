#!/bin/bash 

./passwordcheck.sh

if [ $? -eq 0 ]; then
while :;
do

echo -e "\e[1;35m "1. Create a Folder" \e[0m"
echo -e "\e[1;35m "2. Copy a folder" \e[0m"
echo -e "\e[1;35m "3. Set a password" \e[0m"
echo -e "\e[1;35m "4. Calculator" \e[0m"
echo -e "\e[1;35m "5. Create Week Folders" \e[0m"
echo -e "\e[1;35m "6. Check Filenames" \e[0m"
echo -e "\e[1;35m "7. Download a File" \e[0m"
echo -e "\e[1;35m "8. Exit" \e[0m"

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
4)
./calculator.sh
;;
5)
./foldermaker.sh
;;
6)
./filenames.sh
;;
7)
./Internetdownloader.sh
;;
8)
break;
;;
*) Pause "Select Options between 1 to 8 only"
esac

done

fi

exit 0