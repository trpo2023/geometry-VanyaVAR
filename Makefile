CC = gcc
CFLAGS = -Wall -Wextra -Werror
OBJ = main.o hello.o

all: obj hello

obj: main.o hello.o

main.o: main.c
	$(CC) $(CFLAGS) main.c -c

hello.o: hello.c
	$(CC) $(CFLAGS) hello.c -c

hello: main.o hello.o
	$(CC) $(CFLAGS) $(OBJ) -o hello

clean:
	rm $(OBJ)

fclean: clean
	rm hello

.PHONY: all clean fclean obj
