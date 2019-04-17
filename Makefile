##
## EPITECH PROJECT, 2018
## lib
## File description:
## Makefile
##

CC		= gcc

TARGET	=	libasm.so

SRCDIR	=	src

SRC		=	$(SRCDIR)/strlen.asm		\
			$(SRCDIR)/strcmp.asm		\
			$(SRCDIR)/strncmp.asm		\
			$(SRCDIR)/strchr.asm		\
			$(SRCDIR)/memset.asm		\
			$(SRCDIR)/memcpy.asm		\
			$(SRCDIR)/rindex.asm		\
			$(SRCDIR)/strstr.asm		\
			$(SRCDIR)/strpbrk.asm		\
			$(SRCDIR)/strcspn.asm		\
			$(SRCDIR)/strcasecmp.asm

OBJECTS	=	$(SRC:.asm=.o)
ASM		= nasm

%.o : %.asm
	$(ASM) -o $@ $< -f elf64

all:		$(TARGET)

$(TARGET): $(OBJECTS)
		$(CC) -nostdlib -shared -o $(TARGET) -fPIC $(OBJECTS)

clean:
		rm -f $(OBJECTS)
		make clean -C tests

fclean:
		rm -f $(TARGET)
		rm -f $(OBJECTS)

re:		fclean all

tests_run :
		make -C tests

.PHONY:		all clean fclean re tests_run
