CC=gcc
CFLAGS= -O0 -std=gnu99
CFLAGS_OPTIMIZED= -O2 -std=gnu99

all: sum
sum: sum.c
	$(CC) $(CFLAGS) -o sum sum.c
	./sum
	make clean

sum_O2_optimized: sum.c
	$(CC) $(CFLAGS_OPTIMIZED) -o sum sum.c
	./sum
	make clean

sseTest.s : sseTest.c
	$(CC) -S sseTest.c

clean:
	rm -rf sum
