#!/bin/bash
# learn about standard input/output


# redirect stdout to a file

FILE=data.txt
head -n1 /etc/passwd > ${FILE}
echo

# redirect stdin to a program
echo"redirect stdin to a program"
read LINE < ${FILE}
echo "Contents of LINE : ${LINE}"
echo

# redirect stdout to a file, and overwriting the file
echo "redirect stdout to a file, and overwriting the file"
head -n3 /etc/passwd > ${FILE}
echo "Contents of FILE is now : ${FILE}"
cat ${FILE}
echo


# redirect stdout to a file, appending to the file / menambah baris baru ke file
echo "redirect stdout to a file, appending to the file / menambah baris baru ke file"
echo "After append FILE"
echo "${RANDOM}" >> ${FILE}
echo "${RANDOM}" >> ${FILE}
cat ${FILE}
echo

# redirect STDIN to a program using FD 0
echo "redirect STDIN to a program using FD 0"
read LINE 0< ${FILE}
echo "LINE contains : ${LINE}"
echo

# redirect STDOUT to a file using FD 1, overwriting the file
echo "redirect STDOUT to a file using FD 1, overwriting the file"
head -n3 /etc/passwd 1> ${FILE}
echo
echo "Contents of ${FILE} :"
cat ${FILE}
echo

# redirect STDERR to a file using FD 2
echo "redirect STDERR to a file using FD 2"
ERR_FILE="/tmp/data.err"
head -n3 /etc/passwd /fakefile 2> ${FILE}
echo

# redirect STDOUT and STDERR through a pipe
echo "redirect STDOUT and STDERR through a pipe"
head -n3 /etc/passwd /fakefile |& cat -n

