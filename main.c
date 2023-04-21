#include "common.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// tip: use getpid() to get the current process id

int main(int ac, char * const *av) {

    if (ac < 2) {
        printf("Usage: %s <num>\n", av[0]);
        exit(EXIT_FAILURE);
    }

    int n = atoi(av[1]); // convert the argument to int

    before(n); // before run

    // run the child if n != 0
    if (n > 0) run(1 - n, av[0]);
    if (n < 0) run(n + 1, av[0]);

    after(n); // after run

    exit(EXIT_SUCCESS);
}
