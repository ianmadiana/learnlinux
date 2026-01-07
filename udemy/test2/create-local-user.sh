#!/bin/bash

# make suer the script is being executed with superuser previleges
if [ ${UID} -eq 0 ]; then
    read -p "Input username : " USERNAME
    read -p "Input real name : " COMMENT
    read -s -p "Input password : " PASSWORD

    useradd -c "${COMMENT}" -m ${USERNAME}

    echo "${USERNAME}:${PASSWORD}" | chpasswd

    echo ""

    echo "$(tail -n 1 /etc/passwd)"
else
     echo "Please run with sudo as root"
     echo "${?}"
fi


