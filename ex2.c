#include <unistd.h>
#include "libex2.h"
#include <stdlib.h>

size_t new_write(char* p1){
	return write(1, p1, sizeof(p1));
}
