#!/bin/sh -e

echo "CROSS_TOOLS_PATH:" $1
echo "job:" $2

rm -rf project/gen

cd project/
make $2 COMMON_FLAGS="-DTF_LITE_STATIC_MEMORY -fno-unwind-tables -ffunction-sections -fdata-sections -fmessage-length=0 -march=rv32imc -Ofast" CXX=$1riscv32-esp-elf-g++ CC=$1riscv32-esp-elf-gcc AR=$1riscv32-esp-elf-ar

echo "Done"
