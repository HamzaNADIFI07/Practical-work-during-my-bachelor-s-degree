CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99
SRCS = file_generiques.c file.c tri_file.c main.c
OBJS = $(SRCS:.c=.o)
EXEC = tri_file

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)
