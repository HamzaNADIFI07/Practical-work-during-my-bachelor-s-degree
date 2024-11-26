
CC = gcc
CFLAGS = -Wall -Wextra -g
SRCS = file_generiques.c main.c
OBJS = $(SRCS:.c=.o)
EXEC = file_generique

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)
