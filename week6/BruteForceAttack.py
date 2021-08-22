#!/usr/bin/python3
import random
import hashlib

passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"        #hidden password hash  

wordlistHash=''

your_list = "0123456789abcdefghijklmnopqrstuvwxyz"

def listToString(s):
    str1 = ""
    for ele in s:
        str1 += ele
        return str1

character_list = list(your_list)

guess_password=random.choices(character_list,k=4)   #randomly select from the above character list usin guess function
        
word=listToString(guess_password)

while (passwordHash != wordlistHash):
  guess_password=random.choices(character_list,k=4)
  print(">>>>>"+str(guess_password)+"<<<<<")
  print(listToString(guess_password))
  word=listToString(guess_password)
  word = word.rstrip()
  wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
  if (passwordHash == wordlistHash):
    print("your password is:",guess_password)
    break