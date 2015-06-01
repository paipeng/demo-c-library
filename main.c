#include<stdio.h>

#include "test1.h"
#include "test2.h"


int main(int argc, char** argv) {
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);
    int c = atoi(argv[3]);
    int d = test_add2(a, b, c);
    
    printf("test %d %d %d: %d\n", a, b, c, d);



    int d2 = test_add2(b, c, a);
    printf("test %d %d %d: %d\n", b, c, a, d2);

    int d3 = test_add2(c, a, b);
    printf("test %d %d %d: %d\n", c, a, b, d3);

    return 0;
}

