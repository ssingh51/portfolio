#!/usr/bin/ruby

require 'digest'

passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5"        #read the password hash

IO.foreach("wordlist.txt") do | word |        #open the wordlist and repeat for each word

    word.chomp!

    wordlistHash = Digest::SHA256.hexdigest(word)       #hash the word

    puts("Trying password #{word}: #{wordlistHash}")

    if(wordlistHash == passwordHash)        #if the hash is the same as the correct password's hash then we have cracked the password!

        puts("Password has been cracked! It was #{word}")

        return

    end

end