#!/bin/bash


# script for split msisdn

DIR_FILE=/home/mobaxterm/Documents/learn/LABS/source/msisdn/MSISDN.txt

echo "Split file begin"


split -l 5000 --additional-suffix=.txt $DIR_FILE msisdn_

echo "$STATUS"

echo

if [[ $STATUS -eq 0 ]] 
then 
echo "split success"
else
echo "split failed with exit status : ${?}"
fi

echo
echo "Result split:"
ls -lrt msisdn_*.txt


