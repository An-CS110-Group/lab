#include <stdio.h>
#include <stdint.h>
#include <time.h>

#define PRINT(v) { \
printf("Size of "#v": %d\n", (int) sizeof(v)); \
}

int main() {
	PRINT(char)
	PRINT(short)
	PRINT(short int)
	PRINT(int)
	PRINT(long int)
	PRINT(unsigned int)
	PRINT(void *)
	PRINT(size_t)
	PRINT(float)
	PRINT(double)
	PRINT(int8_t)
	PRINT(int16_t)
	PRINT(int32_t)
	PRINT(int64_t)
	PRINT(time_t)
	PRINT(clock_t)
	PRINT(struct tm)
	PRINT(NULL)
	return 0;
}
