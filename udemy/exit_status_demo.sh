#!/bin/bash

# contoh penggunaan exit status
# 0 -> sukses
# 1-225 -> error dengan kondisi tertentu

# cp file sukses
# list file

LIST_FILE=$(ls -lrt *.txt)

# print hasilnya
echo "${LIST_FILE}"
echo "Jumlah file $(ls *.txt | wc -l)"

echo ""

# tampilkan keterangan exit status
if [[ "${?}" -eq 0 ]]
then
	echo "Exit status = ${?}. Command run succesfully"
else
	echo "Command failed with exit status = ${?}"
fi

# copy file
DIR_CP=/home/ian/workspace/learn/udemy/dir1

cp *.txt $DIR_CP

if [[ "${?}" -eq 0 ]]
then
	echo "success copy file to ${DIR_CP}."
fi
