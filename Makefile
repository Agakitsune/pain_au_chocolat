CC = gcc

SRC = src/square.c
TESTS = tests/test_square.c

OBJ = $(SRC:.c=.o)

NAME = chocolatine

all: $(OBJ)
	gcc $(OBJ) main.c -o $(NAME)

clean:
	rm $(OBJ) -f

fclean: clean
	rm $(NAME) -f
	rm debug -f

tests_run:
	gcc -l criterion --coverage $(SRC) $(TESTS) -o debug
	./debug