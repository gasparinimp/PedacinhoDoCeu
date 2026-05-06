CC = g++
CFLAGS = -Wall -Iinclude
SRC_DIR = src
BIN_DIR = bin
TEST_DIR = test

# Esta linha informa ao Make que estes nomes são comandos, não arquivos
.PHONY: all test clean

all: main

main: $(SRC_DIR)/main.cpp $(SRC_DIR)/bib.cpp
	$(CC) $(CFLAGS) $(SRC_DIR)/main.cpp $(SRC_DIR)/bib.cpp -o $(BIN_DIR)/PedacinhoDoCeu.exe

# Alvo para os testes do Item 9
test: $(TEST_DIR)/main.cpp $(SRC_DIR)/bib.cpp
	$(CC) $(CFLAGS) $(TEST_DIR)/main.cpp $(SRC_DIR)/bib.cpp -o $(BIN_DIR)/testeRegressivo.exe

clean:
	rm -f $(BIN_DIR)/*