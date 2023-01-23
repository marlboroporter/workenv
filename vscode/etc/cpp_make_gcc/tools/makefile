CC=g++
CCFLAGS :=-Wall -c -std=c++17 -ggdb
LDFLAGS=

SOURCES=utils.cpp hello_world.cpp
OBJECTS=$(SOURCES:.cpp=.o)
TOLIB=libda573.a
all: $(SOURCES) $(TOLIB) install clean

$(TOLIB): $(OBJECTS)
	ar rcs $(TOLIB) $(OBJECTS) 
	
.cpp.o:
	$(CC) $(CCFLAGS) $< -o $@

install: $(TOLIB)
	mv $(TOLIB) ../lib
	cp *.h ../include

clean:
	rm *.o
