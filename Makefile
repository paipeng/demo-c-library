CC=gcc

DES_PATH = bin/
all: demo

demo:main.c
	mkdir $(DES_PATH)
	gcc -c -o $(DES_PATH)test1.o test1.c
	ar rcs $(DES_PATH)libtest1.a $(DES_PATH)test1.o
	gcc -c -o $(DES_PATH)test2.o test2.c
	ar rcs $(DES_PATH)libtest2.a $(DES_PATH)test2.o
	gcc -o $(DES_PATH)demo main.c -L$(DES_PATH) -ltest2 -ltest1

debug: 
	mkdir $(DES_PATH)
	gcc -g -c -o $(DES_PATH)test1.o test1.c
	ar rcs $(DES_PATH)libtest1.a $(DES_PATH)test1.o
	gcc -g -c -o $(DES_PATH)test2.o test2.c
	ar rcs $(DES_PATH)libtest2.a $(DES_PATH)test2.o
	gcc -g -o $(DES_PATH)demo_debug main.c -L$(DES_PATH) -ltest2 -ltest1
clean:
	rm -r $(DES_PATH)

