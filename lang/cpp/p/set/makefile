# simple makefile 

FILE_NAME=$(shell basename ${PWD})

all: prep $(FILE_NAME) 
CC = clang++ 
CCFLAGS = --std=c++17 -fcolor-diagnostics -fansi-escape-codes -g 

$(FILE_NAME): $(FILE_NAME).cpp 
	(cd build; $(CC) $(CCFLAGS) ../$? $(LDFLAGS) -o $@)

prep:
	mkdir -p build

clean:
	rm -rf build

run: all
	(cd build; $(FILE_NAME))


