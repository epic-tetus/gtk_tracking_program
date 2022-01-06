CC = gcc

OBJS = main.o
OBJS1 = list.o element.o
OBJS2 = list.o element.o httpget.o

CFLAGS = $(shell pkg-config --cflags gtk+-3.0 json-c)
LDFLAGS = $(shell pkg-config --libs gtk+-3.0 json-c) -lcurl -lsqlite3

main : $(OBJS)
	$(CC) -o $@ $(OBJS) $(CFLAGS) $(LDFLAGS)

element : $(OBJS1)
	$(CC) -o $@ $(OBJS1) $(CFLAGS) $(LDFLAGS)

http : $(OBJS2)
	$(CC) -o $@ $(OBJS2) $(CFLAGS) $(LDFLAGS)

clean :
	rm *.o main element http