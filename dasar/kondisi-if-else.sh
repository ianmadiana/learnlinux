#!/bin/bash

# kondisi if else lanjutan
read -p "Masukkan bilangan: " bilangan

# -gt : greater than -> lebih besar dari
if [ $bilangan -gt 10 ]; then
    echo "${bilangan} lebih besar dari 10"

    # -eq : equal -> sama dengan
elif [ $bilangan -eq 10 ]; then
    echo "${bilangan} sama dengan 10"

    # -lt : less than -> lebih kecil dari
elif [ $bilangan -lt 10 ]; then
    echo "${bilangan} kurang dari 10"
else
    echo "bilangan tidak valid"
fi

# -gt (greater than): lebih besar dari
# Contoh: [ 5 -gt 3 ] → true (karena 5 > 3)
# -ge (greater or equal): lebih besar atau sama dengan
# Contoh: [ 5 -ge 5 ] → true
# -lt (less than): lebih kecil dari
# Contoh: [ 2 -lt 4 ] → true
# -le (less or equal): lebih kecil atau sama dengan
# Contoh: [ 3 -le 3 ] → true
# -eq (equal): sama dengan
# Contoh: [ 7 -eq 7 ] → true
# -ne (not equal): tidak sama dengan
# Contoh: [ 6 -ne 5 ] → true