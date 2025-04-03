# build/Makefile

SRC = ../src
TESTS = ../tests

all: test_argparser

test_argparser:
	gcc -c ../csrc/argv_bridge.c -o argv_bridge.o
	gcc -c ../csrc/main.c -o main.o
	gm2 -I$(SRC) -c -fno-scaffold-main $(SRC)/ArgParser.mod
	gm2 -I$(SRC) -c -fno-scaffold-main $(SRC)/ArgvBridge.mod
	gm2 -I$(SRC) -I$(TESTS) -c -fno-scaffold-main $(TESTS)/TestArgParser.mod
	gm2 -I$(SRC) -o test_argparser \
		main.o \
		TestArgParser.o ArgParser.o ArgvBridge.o \
		argv_bridge.o

clean:
	rm -f test_argparser *.o
