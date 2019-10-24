public class fib {
    public static void main (String[] args) {
        for (int i = 0; i <= 9; i++) {
            System.out.printf("Fibonacci series %d: result: %d%n", i, Fibonacci(i));
        }
    }

    private static int Fibonacci (int n) {
        if (n <= 1) {
            return n;
        } else {
            return Fibonacci(n - 1) + Fibonacci(n - 2);
        }
    }
}