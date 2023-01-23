# https://dev.to/talhabalaj/setup-visual-studio-code-for-multi-file-c-projects-1jpi
#
CXX       := g++
CXX_FLAGS := -std=c++17 -ggdb

BIN     := bin
SRC     := src
INCLUDE := include

BUILD := build

LIBRARIES   := -lda573  
EXECUTABLE  := main

all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) $^ -o $@ $(LIBRARIES) -Llib 

clean:
	-rm  -rf $(BIN)/* 


