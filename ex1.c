#include <unistd.h>

const char* p1 = "Hello\n";

int main(){
	write(1, p1, 6);
	return(0);
}
