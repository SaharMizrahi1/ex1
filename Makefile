# define build tools and flags
CC=gcc
CFLAGS=-m32 -g -Wall -Werror -std=gnu99

# declare the phony targets
.PHONY: all clean

# default target is to build the output target binary
all: system exec popen pipe

# build the object files from the corresponding source files
main.o: main.c common.h
	$(CC) $(CFLAGS) -c main.c -o main.o

system: main.o system.c common.h
	$(CC) $(CFLAGS) system.c main.o -o system

exec: main.o exec.c common.h
	$(CC) $(CFLAGS) exec.c main.o -o exec

popen: main.o popen.c common.h
	$(CC) $(CFLAGS) popen.c main.o -o popen

pipe: main.o pipe.c common.h
	$(CC) $(CFLAGS) pipe.c main.o -o pipe

# clean up
clean:
	rm -f *.o system exec popen pipe
