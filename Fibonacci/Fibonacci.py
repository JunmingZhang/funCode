class LessThanZeroException(Exception):
    pass

def Fibonacci(n):
    if n < 0:
        raise LessThanZeroException("{} is less than 0".format(n))
    elif n <= 1:
        result = n
    else:
        result = Fibonacci(n - 1) + Fibonacci(n - 2)
    return result

if __name__ == "__main__":
    for i in range(0, 10):
        print("Fib of {}: {}".format(i, Fibonacci(i)))
    #Fibonacci(-1);