# simple makefile 

all: helloworld
CC = clang++ 
CFLAGS = --std=c++17 -fcolor-diagnostics -fansi-escape-codes -g 

helloworld: helloworld.cpp 
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o $@

clean:
	rm  -rf *.o helloworld rm helloworld.dSYM

run: all
	echo "run ..."
	helloworld
