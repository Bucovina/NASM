nasm -f elf64 program.asm -o program.o
gcc -m64 -no-pie program.o -o program
./program
