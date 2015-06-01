#include "test2.h"
#include "test1.h"

int test_add2(int a, int b, int c) {
    int t = test_add(a, b);
    int t2 = test_add(t, c);
    return t2;
}
