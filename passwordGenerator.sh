#!/bin/bash

# Simple Password Generator

echo "Welcome to the Simple Password Generator :)"
echo "Please enter the length of the password: "
read PASS_LENGTH

echo "Here we are choose a one from those five :)"
for p in $(seq 1 5); do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
