#!/bin/bash

# display the UID
echo "Your UID is ${UID}"

# display your name
USER_NAME=$(id -un)
echo "Your name is ${USER_NAME}"

# if statements
# jika bukan root
if [[ "${UID}" -eq 0 ]]
then
	echo "You are root"
else
	echo "You are not root"
fi
