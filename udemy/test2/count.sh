#!/bin/bash
#
# script for print numbers from params

i=1
while [ $i -le "$1" ]
do
	echo "$i"
	# i=$((i+1))
	((i++))
done
