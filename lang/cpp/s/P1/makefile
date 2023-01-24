PX=$(shell basename $$PWD)
CXX       := g++
CXX_FLAGS := -std=c++17 -ggdb

INCLUDE := ../common/include
LIBPATH := ../common/lib

BUILD := build

LIBRARIES   := -lda573  
EXECUTABLE  := $(PX).out 

all: extract $(EXECUTABLE)  

extract:
	x_extract_p all $(PX).md 


run: clean all
	clear
	$(EXECUTABLE)

$(EXECUTABLE): *.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) $^ -o $@ $(LIBRARIES) -L$(LIBPATH) 

clean:
	-rm  -rf $(EXECUTABLE) *.o *.dSYM 

.PHONY: clean


