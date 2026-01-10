#!/bin/bash


# script for split msisdn

# dir file
DIR_FILE=/home/mobaxterm/Documents/learn/LABS/source/msisdn/MSISDN.txt

echo "Split file begin"

# command for splitting file msisdn
split -l 5000 --additional-suffix=.txt $DIR_FILE msisdn_

STATUS=${?}

# cek if status 0 / success
if [[ $STATUS -eq 0 ]] 
then 
# print success
echo "split success"
# else print failed with exit status
else
echo "split failed with exit status : ${?}"
fi

# print result
echo
echo "Result:"
ls -lrt msisdn_*.txt


