all:
	nasm -f elf64 memory.asm
	ld -A elf_x86_64 -o mem memory.o

rm:
	rm mem memory.o
