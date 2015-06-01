# demo-c-library
testing link static libraries in c



gdb usage:
> cd bin
> gdb
(gdb) file demo_debug
(gdb) break main.c:11
(gdb) r 1 2 3
Breakpoint 1, main (argc=4, argv=0x7fffffffe628) at main.c:11
11	    int d = test_add2(a, b, c);
(gdb) print a
$1 = 1
(gdb) print b
$2 = 2
(gdb) next
13	    printf("test %d %d %d: %d\n", a, b, c, d);
(gdb) next
test 1 2 3: 6
17	    int d2 = test_add2(b, c, a);
(gdb) step
test_add2 (a=2, b=3, c=1) at test2.c:5
5	    int t = test_add(a, b);
(gdb) step
test_add (a=2, b=3) at test1.c:5
5	    return a + b;
(gdb) print a
$3 = 2
(gdb) print b
$4 = 3
(gdb) next
6	}
(gdb) next
test_add2 (a=2, b=3, c=1) at test2.c:6
6	    int t2 = test_add(t, c);
(gdb) step
test_add (a=5, b=1) at test1.c:5
5	    return a + b;
(gdb) step
6	}
(gdb) step
test_add2 (a=2, b=3, c=1) at test2.c:7
7	    return t2;
(gdb) print t2
$5 = 6
(gdb) step
8	}
(gdb) step
main (argc=4, argv=0x7fffffffe628) at main.c:18
18	    printf("test %d %d %d: %d\n", b, c, a, d2);
(gdb) next
test 2 3 1: 6
20	    int d3 = test_add2(c, a, b);
(gdb) watch a 
Hardware watchpoint 2: a
(gdb) continue
Continuing.
test 3 1 2: 6

Watchpoint 2 deleted because the program has left the block in
which its expression is valid.
__libc_start_main (main=0x400546 <main>, argc=4, argv=0x7fffffffe628, init=<optimized out>, fini=<optimized out>, rtld_fini=<optimized out>, stack_end=0x7fffffffe618)
    at libc-start.c:321
321	libc-start.c: No such file or directory.
(gdb) quit
A debugging session is active.

	Inferior 1 [process 1536] will be killed.

Quit anyway? (y or n) n
Not confirmed.
(gdb) continue
Continuing.
[Inferior 1 (process 1536) exited normally]



MIT license
