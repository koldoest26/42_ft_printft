NAME = libftprintf.a

FILES = ft_printf \
	ft_printf_utils

CC = cc
FLAGS = -Wall -Wextra -Werror

CFILES = $(FILES:%=%.c)

OFILES = $(FILES:%=%.o)

OUTN = $(NAME)

NAMES = $(OUTN)

LIB = ar -rcs

$(NAME):
	$(CC) $(FLAGS) -c $(CFILES) -I./
	$(LIB) $(OUTN) $(OFILES)

all: $(NAME)

clean:
	rm -f $(NAMES)
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAMES)

re: fclean all

.PHONY: all, clean, fclean, re
