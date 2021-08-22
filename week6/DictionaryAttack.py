#!/usr/bin/python3

import hashlib

passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"        #hidden password hash

with open("wordlist.txt","r") as wordlist:      #open the wordlist

    for word in wordlist.readlines():       #repeat for each word

        word = word.rstrip()

        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()     #hash the word

        print(f"Trying password {word}:{wordlistHash}")

        if (wordlistHash == passwordHash):      #if the hash is the same as the correct password's hash then we have cracked the password!

            print(f"Password has been cracked! It was {word}")

            break