#!/bin/bash
# learn about standard input/output


# redirect stdout to a file

FILE=data.txt
head -n1 /etc/passwd > ${FILE}

# redirect stdin to a program
read LINE < ${FILE}
echo "Contents of LINE : ${LINE}"

# redirect stdout to a file, and overwriting the file

head -n3 /etc/passwd > ${FILE}
echo
echo "Contents of FILE is now : ${FILE}"
cat ${FILE}

# redirect stdout to a file, appending to the file / menambah baris baru ke file
echo
echo "After append FILE"
echo "${RANDOM}" >> ${FILE}
echo "${RANDOM}" >> ${FILE}
cat ${FILE}
