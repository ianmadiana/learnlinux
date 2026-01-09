#!/bin/bash


# learn parameters
# $# = jumlah argumen
# $@ = semua argumen (bagus untuk di-loop), masing-masing tetap utuh
# $* = semua argumen juga, tapi beda cara “menggabung”-nya (nanti dulu, yang aman biasanya $@)

echo "argumen 1 : $1"
echo "argumen 2 : $2"
echo "argumen 3 : $3"


echo "Jumlah argumen: $#"
echo "Semua argumen (pakai \$@): $@"
