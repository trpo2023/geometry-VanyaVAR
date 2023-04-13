CC = gcc
CFLAGS = -Wall -Werror
OBJ = geometry.o

all: obj geometry

obj: geometry.o

geometry.o: geometry.c
	$(CC) $(CFLAGS) geometry.c -c

geometry: geometry.o
	$(CC) $(CFLAGS) $(OBJ) -o geometry

clean:
	rm $(OBJ)

fclean: clean
	rm geometry

.PHONY: all clean fclean obj
