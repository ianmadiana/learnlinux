#!/bin/bash
#
# script for test command shift
#

kata=$1

shift

while [ $# -gt 0 ]
do
	echo "kata : $1"
	shift
done
