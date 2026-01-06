#!/bin/bash

# only display if the UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}"
	exit 1
fi


# display the username
USER_NAME=$(id -un)

# test if the command if succeeded

if [[ "${?}" -ne 0 ]]
then
	echo "The id command did not execute succesfully"
	exit 1
fi

echo "Your username is ${USER_NAME}"
