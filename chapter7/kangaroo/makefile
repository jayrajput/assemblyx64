kangaroo: kangaroo.o
	ld -o kangaroo kangaroo.o
kangaroo.o: kangaroo.asm
	nasm -f elf64 -g -F stabs kangaroo.asm -l kangaroo.lst
