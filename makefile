.SUFFIXES: .h .o .cpp

CCMAIN = main.cpp KaratsubaMultiplication.cpp
CC = g++
CCOPTS = -g
LIBS = -lm
OBJS = main.o KaratsubaMultiplication.o
CCEXEC = test


all:	$(CCEXEC)

$(CCEXEC):	$(OBJS) makefile 
	@echo Linking $@ . . .
	$(CC) $(CCOPTS) $(OBJS) -o $@ $(LIBS)

%.o:	%.c
	@echo Compiling $< . . .
	$(CC) -c $(CCOPTS) $<

run:	all
	./$(CCEXEC)

clean:
	rm -f $(OBJS)
	rm -f $(CCEXEC)
	rm -f core

# references
# http://stackoverflow.com/questions/19230621/cant-catch-apostrophe-in-if-statement   showed me how to check for ' \' ' and '/''
# http://www.tutorialspoint.com   for how the fprintf(), fgets(),ctime() ect are used.
# http://man7.org/linux/man-pages/man2/getpid.2.html  
# https://www.google.ca/search?q=fork+c+child+knows+its+pid&ie=UTF-8&sa=Search&channel=fe&client=browser-ubuntu&hl=en&gws_rd=cr,ssl&ei=za0WVv_jLM6qogShqKTwCA#channel=fe&hl=en&q=fork+c
#http://stackoverflow.com/questions/11322488/how-to-make-sure-that-waitpid-1-stat-wnohang-collect-all-children-process
#
#
#
