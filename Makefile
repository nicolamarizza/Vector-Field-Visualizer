CC		  := g++
CFLAGS := -Wall -pedantic -std=c++11

BIN		:= bin
SRC		:= src
INCLUDE	:= SFML-2.5.1/include
LIB		:= SFML-2.5.1/lib

LIBRARIES	:= -lsfml-graphics -lsfml-window -lsfml-system
EXECUTABLE	:= vfv


all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CC) $(CFLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)

clean:
	-rm $(BIN)/*
