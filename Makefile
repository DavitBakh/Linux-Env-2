all: program

program: main.o complex.o sort.o
	g++ main.o complex.o sort.o -o program

main.o: main.cpp complex.h sort.h
	g++ -c main.cpp -o main.o

complex.o: complex.cpp
	g++ -c complex.cpp -o complex.o

sort.o: sort.cpp
	g++ -c sort.cpp -o sort.o

clean:
	rm -rf *.o program
