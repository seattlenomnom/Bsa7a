# makefile for bsa7a
#
bsa7a: bsa7a.o
	ld bsa7a.o -o ./Build/DEBUG/bsa7a

bsa7a.o: bsa7a.s
	as -g bsa7a.s -o ./bsa7a.o

.PHONY: clean
clean:
	rm *.o
	rm ./Build/DEBUG/bsa7a
