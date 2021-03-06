# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zkerkeb <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/20 14:50:46 by zkerkeb           #+#    #+#              #
#    Updated: 2015/12/20 17:24:10 by zkerkeb          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

CC = gcc

FLAGS = -Wall -Wextra -Werror

SRC = all_malloc.c all_try.c ft_try_form.c libftfunc.c main.c other_func.c \
	  parcour.c placement.c usefull_func.c

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ) 

$(OBJ) :
	$(CC) $(FLAGS) -c $(SRC)
	$(CC) $(FLAGS) $(OBJ) -o $(NAME)

clean :
		rm -f $(OBJ)

fclean : clean
		rm -f $(NAME)

re : fclean all

