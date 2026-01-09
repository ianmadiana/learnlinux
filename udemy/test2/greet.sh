#!/bin/bash
#
# display greetings with params
#

if [[ $# -ge 1 ]]
then
	for i in "$@"; do echo "Halo, $i "; done
else
	echo "Halo, stranger"
fi
