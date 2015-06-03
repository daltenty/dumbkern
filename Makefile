
loader: loader.S
	as -o loader.o loader.S
	ld --oformat binary -o loader loader.o
