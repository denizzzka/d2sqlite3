ifeq (Darwin,$(shell uname -s))
	CC:=clang
else
	CC:=gcc
endif

all: sqlite3.o
	
sqlite3.o: c/sqlite3.c
	$(CC) -c -O3 c/sqlite3.c -o sqlite3.o
	
clean:
	rm -f *.o
