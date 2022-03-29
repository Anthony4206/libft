NAME 		=	libft.a

SRCS 		= 	ft_isalpha.c	ft_isdigit.c	ft_isalnum.c	ft_isascii.c \
				ft_isprint.c	ft_strlen.c		ft_memset.c		ft_bzero.c \
				ft_memcpy.c		ft_memmove.c	ft_strlcpy.c	ft_strlcat.c \
				ft_toupper.c	ft_tolower.c	ft_strchr.c		ft_strrchr.c \
				ft_strncmp.c	ft_memchr.c		ft_memcmp.c		ft_strnstr.c \
				ft_atoi.c		ft_calloc.c		ft_strdup.c		ft_substr.c \
				ft_strjoin.c	ft_strtrim.c	ft_split.c		ft_itoa.c \
				ft_strmapi.c	ft_striteri.c	ft_putchar_fd.c	ft_putstr_fd.c \
				ft_putendl_fd.c	ft_putnbr_fd.c

OBJS 		=	${SRCS:.c=.o}

BONUS		=	ft_lstnew.c		ft_lstsize.c	ft_lstlast.c	ft_lstadd_front.c \
				ft_lstdelone.c	ft_lstclear.c	ft_lstiter.c	ft_lstadd_back.c \
				ft_lstmap.c

BONUS_OBJS	=	${BONUS:.c=.o}

CC 			= 	gcc
CFLAGS 		= 	-Wall -Wextra -Werror

AR 			= 	ar rc
RM 			= 	rm -f

GREEN		:=	"\033[0;32m"
CYAN		:=	"\033[0;36m"
RESET		:=	"\033[0m"

%.o: 			%.c
				@${CC} ${CFLAGS} -o ${@} -c ${@:.o=.c}

${NAME}: 		${OBJS}
				@${AR} ${NAME} ${OBJS}
				@echo ${GREEN}"Compiled '${NAME}' with success" ${RESET}

all: 			${NAME}

bonus:			${NAME} ${BONUS_OBJS}
				@${AR} ${NAME} ${BONUS_OBJS}
				@touch bonus
				@echo ${GREEN}"Compiled 'bonus' with success" ${RESET}
		

clean:
				@${RM} ${OBJS} ${BONUS_OBJS} bonus
				@echo ${CYAN}"Cleaned objects with success"${RESET}


fclean: 		clean
				@${RM} ${NAME}
				@echo ${CYAN}"Removed '${NAME}' with success"${RESET}


re: 			fclean all

.PHONY: 		all clean fclean re 
