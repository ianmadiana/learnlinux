#!/bin/bash

# Script biodata input dari user

# display computer username
USER_NAME=$(id -un)
echo "Your UID is ${USER_NAME}" # or you can use whoami
# older syntax use backticks
USER_NAME1=`whoami`
echo "Username is ${USER_NAME1}"


# display UID

echo -n "Input your name: "
# minta input dan masukkan ke variable NAME
read NAME

echo "Welcome $NAME!"
