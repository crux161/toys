CC = gcc
CFLAGS = -Wall -Werror -std=c11

all: toys

toys: main.o helper.o
	$(CC) $(CFLAGS) -o toys main.o helper.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

helper.o: helper.c
	$(CC) $(CFLAGS) -c helper.c

clean:
	rm -f *.o toys
web:
	python -m http.server

edit: 
	nvim index.html
