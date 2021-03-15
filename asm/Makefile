# TODO get local compiler
CC=gcc
CFLAGS= -c -std=gnu11 -Wall -O0 # make assembly input

all:main.s

# make assembly file
main.s:main.c
	$(CC) $(CFLAGS) -S $^ -o build/$@

clean:
	rm -rf build/*