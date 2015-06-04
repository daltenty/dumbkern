
loader: loader.S
	as -o loader.o loader.S
	ld -Ttext 0x7c00 --oformat=binary -o loader loader.o
