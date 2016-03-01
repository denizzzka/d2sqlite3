CC=cc
CFLAGS=-c -Os -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_JSON1 -DSQLITE_ENABLE_COLUMN_METADATA

all: sqlite3.o
	
sqlite3.o: c/sqlite3.c
	$(CC) c/sqlite3.c -o sqlite3.o $(CFLAGS)
	
clean:
	rm -f sqlite3.o
