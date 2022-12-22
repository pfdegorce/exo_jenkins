VARGCC = gcc
C = -c

all: main.o messages.o args.o
	$(VARGCC) -o main main.o messages.o args.o

main.o: main.c args.h colors.h
	$(VARGCC) $(C) main.c -o main.o

messages.o: messages.c messages.h colors.h
	$(VARGCC) $(C) messages.c -o messages.o

args.o: args.c args.h messages.h colors.h
	$(VARGCC) $(C) args.c -o args.o

test/math_function.o: test/math_function.c test/math_function.h
	$(VARGCC) $(C) test/math_function.c -o test/math_function.o

test: test/main.c test/math_function.o test/math_function.h
	gcc -c test/main.c -o test/main_test.o
	gcc -o test/main_test test/main_test.o test/math_function.o
	./test/main_test
	
clean:
	rm -f *.o

clean_test:
	rm -f test/*.o
