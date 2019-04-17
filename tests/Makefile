##
## EPITECH PROJECT, 2019
## ASM_minilibc_2018
## File description:
## Makefile
##

SDIR	=	../src/

SRC		=	$(SDIR)strlen.asm	\
 			$(SDIR)strcmp.asm	\
 			$(SDIR)strncmp.asm	\
 			$(SDIR)strchr.asm	\
 			$(SDIR)memset.asm	\
 			$(SDIR)memcpy.asm	\
 			$(SDIR)rindex.asm	\
 			$(SDIR)strstr.asm	\
 			$(SDIR)strcasecmp.asm	\
 			$(SDIR)strcspn.asm	\
 			$(SDIR)strpbrk.asm	\
 			#$(SDIR)memmove.asm	\

UTDIR	=	./

UT		=	$(UTDIR)test_strlen.c	\
			$(UTDIR)test_strchr.c	\
			$(UTDIR)test_memcpy.c	\
			$(UTDIR)test_memmove.c	\
			$(UTDIR)test_memset.c	\
			$(UTDIR)test_rindex.c	\
			$(UTDIR)test_strcasecmp.c	\
			$(UTDIR)test_strcmp.c	\
			$(UTDIR)test_strncmp.c	\
			$(UTDIR)test_strpbrk.c	\
			$(UTDIR)test_strstr.c	\
			$(UTDIR)test_strcspn.c	\

OBJ		=	$(SRC:.asm=.o) $(UT:.c=.o)

ASM		=	nasm

CC		=	gcc

CFLAGS	=	-W -Wall -Wextra --coverage

CPPFLAGS	=	

LDFALGS	=	-lcriterion

NAME	=	units

%.o : %.asm
	$(ASM) -o $@ $< -f elf64

all	:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CFLAGS) $(CFLAGS) $(LDFALGS)
	./$(NAME)

clean:
	rm -f $(OBJ)

	rm -f $(SDIR)*.gc*
	rm -f $(UTDIR)*.gc*

fclean:	clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re