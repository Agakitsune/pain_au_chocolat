CC = gcc

SRC = main.c

OBJ = $(SRC:.c=.o)

NAME = slurp

all: $(OBJ)
	gcc $(OBJ) -o $(NAME)

clean:
	rm $(OBJ)