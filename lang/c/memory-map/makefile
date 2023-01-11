# simple makefile 

all: prep c c++ 
CC = clang++ 
C=clang
CCFLAGS = --std=c++17 -fcolor-diagnostics -fansi-escape-codes -g 
#CFLAGS = --std=c17 -fcolor-diagnostics -fansi-escape-codes -g 
#CFLAGS = -std=c89  -fcolor-diagnostics -fansi-escape-codes -g 
CFLAGS = -g 

c++: c++.cpp 
	(cd build; $(CC) $(CCFLAGS) ../$? $(LDFLAGS) -o $@)

c: c.c
	(cd build; $(C) $(CFLAGS) ../$? $(LDFLAGS) -o $@ )

prep:
	mkdir -p build

clean:
	rm -rf build
	#(cd build;  rm  -rf *.o c c++ c.dSYM c++.dSYM)

run: all
	#echo "run c++"
	c++
	
	#echo "run C"
	c
