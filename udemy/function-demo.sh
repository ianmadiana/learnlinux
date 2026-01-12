#!/bin/bash

# learn about function

greet() {
	echo "Hello from function"
}

greet

# function with params
echo
echo "function with params"
sapa() {
	echo "Halo ${1}, selamat datang"
}
sapa "$1"

# kirim semua params
sapa "$@"
echo

# cara return
echo "cara return"
cek_file() {
  [[ -f "$1" ]]
  return $?
}

cek_file "/etc/passwd"
echo $?   # 0 = ada, 1 = tidak ada

echo
# variable scope
# Default: semua variable = global
# readonly/local hanya di dalam function
echo "variable scoop"

test() {
  x=10
}

test
echo $x   # 10
echo
echo "local variable"
test() {
  local x=10
}

test
echo $x   # kosong


