CC=arm-none-eabi-gcc
PROC=cortex-m0plus
# XXX: may need to add debug symbols if using gdb
CFLAGS= -c -mcpu=$(PROC) -mthumb -std=gnu11 -Wall -O0 -fomit-frame-pointer
# TODO: write custom startup script so that we can remove stdlib
LDFLAGS= -nostdlib --specs=nosys.specs -Xlinker -Map=build/out.map -T stm32_linker_script.ld

all:main.s main.o out.elf

main.s:main.c
	$(CC) $(CFLAGS) -S $^ -o build/$@

main.o:main.c
	$(CC) $(CFLAGS) -o build/$@ $^

out.elf:main.o
	$(CC) $(LDFLAGS) -o build/$@ build/$^

clean:
	rm -rf build/*