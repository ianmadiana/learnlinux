#!/bin/bash

# learn about function

log() {
    local MESSAGE="${@}"
    if [ "${VERBOSE}" = "true" ]; then
         echo "${MESSAGE}"
    fi
    logger -t log-demo.sh "${MESSAGE}"
}


# create log from function backup
backup_file() {
    # this function creates a backup of a file. Returns non-zero status on error.
    local FILE="${1}"

    #make sure file exists
    if [ -f "${FILE}" ]; then
         local BACKUP_FILE="/var/tmp/$(basename ${FILE}).$(date +%F-%N)"

         # the exit status of the function will be the exit status of the cp command.
         cp -p ${FILE} ${BACKUP_FILE}
    else
         # the fle doe not exist, so return a non-zero exit status
         return 1
    fi
    
}

readonly VERBOSE='true'
log "Hello"
log "This is fun!"

backup_file "/etc/passwd"

# make a decision based on exit status
if [[ "${?}" -eq "0" ]]; then
	log "File backup succeeded"
else
	log "File backup failed"
	exit 1
fi
