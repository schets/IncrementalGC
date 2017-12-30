CC=g++ -std=c++11 -I include/

all: prog

prog: incremental.o
	$(CC) -shared incremental.o -o libincremental.so

incremental.o: src/incremental.cpp include/incremental.hpp
	$(CC) src/incremental.cpp -c -o incremental.o

src/incremental.cpp:

include/incremental.hpp: