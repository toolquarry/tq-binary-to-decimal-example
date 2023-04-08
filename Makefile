# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -I./include

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
LIB_DIR = ../tq-binary-to-decimal/lib

# Files
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC_FILES))
BIN_FILE = $(BIN_DIR)/tq_binary_to_decimal_example

# Targets
.PHONY: all clean

all: $(BIN_FILE)

$(BIN_FILE): $(OBJ_FILES)
	$(CC) $(CFLAGS) -L$(LIB_DIR) -o $@ $^ -lbinary_to_decimal

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir -p $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

