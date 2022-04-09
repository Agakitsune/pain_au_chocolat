CC = gcc

SRC = src/square.c
TESTS = tests/test_square.c

INCLUDE = -I ./include

CFLAGS = -W -Wall -Werror -Wextra $(INCLUDE)

OBJ = $(SRC:.c=.o)

NAME = chocolatine

all: $(OBJ)
	gcc $(CFLAGS) $(OBJ) main.c -o $(NAME)

clean:
	rm $(OBJ) -f

fclean: clean
	rm $(NAME) -f
	rm debug -f

tests_run:
	gcc -l criterion --coverage $(SRC) $(TESTS) -o debug
	./debug