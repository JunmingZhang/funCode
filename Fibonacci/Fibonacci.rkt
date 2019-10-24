#lang racket

(provide Fibonacci)

(define (Fibonacci n)
    (cond [(< n 0) (error (format "~a is less than 0" n))]
          [(<= n 1) n]
          [else (+ (Fibonacci (- n 1)) (Fibonacci (- n 2)))]
    )
)

(module* main #f
    (define (printing n)
        (if (= n 0)
            (println (format "Fib of ~a: ~a" n (Fibonacci n)))
            (begin
                (printing (- n 1))
                (println (format "Fib of ~a: ~a" n (Fibonacci n)))
            )
        )
    )
    (printing 9)
)