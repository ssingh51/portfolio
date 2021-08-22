#!/bin/bash
grep -r "^sed"      #search all sed statements
grep -r "^m"        #all lines that start with letter m
grep -r "[0-9][0-9][0-9]"   #all lines that contain three digit numbers
grep -E "^echo\[a-zA-Z]+\s[a-zA-Z]+\s[a-zA-Z]+(.*)"   #all echo statements with atleast three words
grep -r "^[A-Z][a-z][a-z][a-z][a-z][a-z][0-9][0-9][@#$&].*\b"   #all lines that would make a good password; atleast 8 digit with one upper case and one lower case letter followed by a special character.