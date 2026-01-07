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

# is dir exists?
if [[ -d "$DIR_CP" ]]
then
	echo "OK: $DIR_CP found"
else
	echo "ERROR: $DIR_CP not found. Start creating dir"
	mkdir -p "$DIR_CP"
fi

# copy file
echo "Copy file"
cp *.txt $DIR_CP/.

if find . -maxdepth 1 -name "*.txt" | grep -q .
then
	echo "File berhasil disalin"
	echo "Jumlah file : $(ls $DIR_CP | wc -l)"
fi
