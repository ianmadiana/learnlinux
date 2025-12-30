#!/bin/bash

# cek bilangan genap atau ganjil

# echo "Masukkan bilangan 1: "
# read n1
read -p "Masukkan bilangan: " n1

# HASIL=$(($n1 + $n2))

# echo "Hasil = $HASIL"



if (($n1 % 2 == 0)); then
     echo "$n1 adalah bilangan genap"
elif [ condition ]; then
     echo "$n1 adalah bilangan ganjil"
else
     echo "Tidak valid"
fi



