#include <stdio.h>
#include <stdlib.h>

int Fibonacci(int n) {
    int result;
    if (n < 0) {
        fprintf(stderr, "%d is less than 0", n);
        exit(1);
    } else if (n <= 1) {
        result = n;
    } else {
        result = Fibonacci(n - 1) + Fibonacci(n - 2);
    }
    return result;
}

int main(void) {
    for (int i = 0; i < 10; i++) {
        printf("Fib of %d: %d\n", i, Fibonacci(i));
    }
    // Fibonacci(-1);
    return 0;
}