# simple makefile 

all: helloworld helloc
CC = clang++ 
C=clang
CCFLAGS = --std=c++17 -fcolor-diagnostics -fansi-escape-codes -g 
CFLAGS = --std=c17 -fcolor-diagnostics -fansi-escape-codes -g 

helloworld: helloworld.cpp 
	$(CC) $(CCFLAGS) $? $(LDFLAGS) -o $@
helloc: helloc.c
	$(C) $(CFLAGS) $? $(LDFLAGS) -o $@


clean:
	rm  -rf *.o helloworld helloc 
	rm -rf helloworld.dSYM helloc.dSYM

run: all
	echo "run c++"
	helloworld
	echo "run C"
	helloc
