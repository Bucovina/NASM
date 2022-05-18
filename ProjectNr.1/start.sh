nasm -f elf32 program.asm -o program.o
gcc -m32 program.o -o program
./program
