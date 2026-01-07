#!/bin/bash

# this script creates an accound on the local system
# prompted for the account name and password

# ask for the username
read -p "Enter username : " USERNAME

# ask for the real name
read -p "Enter full name : " COMMENT

# ask for the password
read -s -p "Enter password : " PASSWORD

# create the user
useradd -c "${COMMENT}" -m ${USERNAME}

# set the password for the user
# this is for rhel
# echo ${PASSWORD} | passwd --stdin ${USERNAME}
# debian / ubuntu
echo "${USERNAME}:${PASSWORD}" | chpasswd

# force password change on first login
# passwd -e ${USERNAME}
