#!/bin/bash
echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do"

choice="Encrypt Decrypt"

select option in $choice; do
        if [ $REPLY = 1 ];
        then
                echo "You have selected encryption"
                echo "Please enter the file name"
                read FILE
                gpg -c $FILE
                echo "the file has been encrypted"
        elif [ $REPLY = 2 ];
        then
                echo "You have selected decryption"
                echo "Please enter the file name"
                read FILE
                gpg -d $FILE.gpg > $FILE
                echo "File has been decrypted"
        fi
        #exit with code 0
        exit 0
done
