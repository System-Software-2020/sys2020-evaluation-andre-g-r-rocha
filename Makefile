PREFIX = .

all: libex2.so
	gcc ex1.c -L. -lex2 -o ex1

libex2.so: libex2.o
	gcc -shared -o libex2.so libex2.o -lm

libex2.o:
	gcc -o libex2.o -c ex2.c

clean:
	rm -f libex2.o libex2.so ex1

install:
	mkdir -p $(PREFIX)/usr/bin $(PREFIX)/usr/lib; mv ex1 $(PREFIX)/usr/bin; mv libex2.so $(PREFIX)/usr/lib

uninstall:
	rm -r $(PREFIX)/usr
