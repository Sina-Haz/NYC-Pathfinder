all: path

path:path.c
	gcc -g -Wall -Werror -fsanitize=address path.c -o path
clean:
	rm path