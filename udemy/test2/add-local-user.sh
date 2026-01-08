#!/bin/bash

# script akan berhenti jika ada command yang gagal (exit status != 0)
set -e

# make suer the script is being executed with superuser previleges
if [ ${UID} -eq 0 ]; then
    read -p "Input username : " USERNAME
    read -p "Input real name : " COMMENT
    read -s -p "Input password : " PASSWORD

    useradd -c "${COMMENT}" -m -s /bin/bash ${USERNAME} || {
	    echo "Failed to create user"
    exit 1
}

    # if [[ -d /home/$USERNAME ]]
    # then
	#     echo "Reuse home directory for ${USERNAME}"
	#     chown -R "$USERNAME:$USERNAME" "/home/$USERNAME"
    # fi

	echo "${USERNAME}:${PASSWORD}" | chpasswd
	chage -d 0 "$USERNAME"
	    
	echo

    echo "----- Last entry -----"
    tail -n 1 /etc/passwd
    echo
    echo "----- Account Information -----"
    echo "username : ${USERNAME}"
    echo "password : ${PASSWORD}"
    echo "host : $(hostname)"

else
     echo "Please run with sudo as root"
     echo "${?}"
fi


