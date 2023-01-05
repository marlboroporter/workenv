# simple makefile 

all: c c++ 
CC = clang++ 
C=clang
CCFLAGS = --std=c++17 -fcolor-diagnostics -fansi-escape-codes -g 
CFLAGS = --std=c17 -fcolor-diagnostics -fansi-escape-codes -g 

c++: c++.cpp 
	$(CC) $(CCFLAGS) $? $(LDFLAGS) -o $@
c: c.c
	$(C) $(CFLAGS) $? $(LDFLAGS) -o $@


clean:
	rm  -rf *.o c c++ 
	rm -rf c.dSYM c++.dSYM

run: all
	echo "run c++"
	c++
	echo "run C"
	c