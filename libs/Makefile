#Documentation for makefile can be found here: https://www.gnu.org/software/make/manual/

#Use GCC Compiler for ARM / x86 based on your deployment

CC=gcc

SRC=src/thread_api.c
INC_PATH = -Iinc/
FLAGS=-lpthread

OBJ = ../workspace/meta/obj/thread_api.o


$(OBJ): $(SRC)
	@echo "creating library object files"
	$(CC) $(INC_PATH) -c $(SRC) $(FLAGS) -o $(OBJ) 
