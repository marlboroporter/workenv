# simple makefile 

FILE_NAME=$(shell basename ${PWD})

all: prep $(FILE_NAME) 
CFLAGS = --std=c17 -fcolor-diagnostics -fansi-escape-codes -g 
C=clang

$(FILE_NAME): $(FILE_NAME).c 
	@(cd build; $(C) $(CFLAGS) ../$? $(LDFLAGS) -o $@)

prep:
	@mkdir -p build

clean:
	@rm -rf build

run: all
	@(cd build; $(FILE_NAME))


