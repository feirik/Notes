CC=gcc # Set C-compiler
CFLAGS= -Wall -Wextra # Set compiler to throw more strict warnings

all: Main # Set default target

# Compiling files
%.o : %.c # Let object files be depedent on changes in source files 
    @echo " Started to compile $@"
    @$(CC) $(CFLAGS) -c -o $@ $< # $@ is the output file %.o target, $< is the input file %.c

LibA.o: LibA.c LibA.h # Set prerequisites for source files 
LibB.o: LibB.c LibB.h
Main.o: Main.c

# Linking files, $^ is all object files listed below
Main: Main.o LibA.o LibB.o # Set prerequisites for object files
    @echo -e " Linking $@\n"
    @$(CC) $(CFLAGS) $^ -o $@
