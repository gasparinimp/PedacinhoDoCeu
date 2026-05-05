# Variáveis de compilador e flags
CC = g++
CFLAGS = -Wall -Iinclude

# Pastas
SRC_DIR = src
BIN_DIR = bin
TEST_DIR = test

# Alvos principais
all: main

# Compilação do programa principal (Gera o binário em \bin)
main: $(SRC_DIR)/main.cpp $(SRC_DIR)/bib.cpp
	$(CC) $(CFLAGS) $(SRC_DIR)/main.cpp $(SRC_DIR)/bib.cpp -o $(BIN_DIR)/PedacinhoDoCeu.exe

# Alvo para compilação de testes (Requisito do Item 9)
teste: $(TEST_DIR)/main.cpp $(SRC_DIR)/bib.cpp
	$(CC) $(CFLAGS) $(TEST_DIR)/main.cpp $(SRC_DIR)/bib.cpp -o $(BIN_DIR)/testeRegressivo.exe

# Limpeza dos binários
clean:
	rm -f $(BIN_DIR)/*.o $(BIN_DIR)/*.exe