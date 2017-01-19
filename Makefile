#Fill in the dependencies and rules to make the make file
CC = gcc
LD = gcc
ifdef DEBUG
CFLAGS = -ggdb -Wall
else
CFLAGS = -std = c99 -O3
endif
LIBS = -lm

testVectors: #depends on...
	#rule to make testVectors from dependencies HINT: you need to add a flag for the math library (google it)
	testVectors.o vectors.c vectors.h
	$(LD) -o testVectors vectors.o testVectors.o $(LIBS)
	
vectors.o: #depends on...
	#rule to make vectors.o from dependencies
	vectors.c vectors.h
	$(CC) $(CFLAGS) -o vectors.o -c vectors.c

testVectors.o: #depends on... 
	#rule to make testVectors.o from dependences
	testVectors.c vectors.c
	$(CC) $(CFLAGS) -o testVectors.o -c testVectors.c

clean:
	rm *.o
	rm testVectors
