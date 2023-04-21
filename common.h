#ifndef COMMON_H
#define COMMON_H

#include <fcntl.h>

#define BUF_SIZE 1024

void before(int n);
void run(int n, char * const name);
void after(int n);

#endif // COMMON_H
