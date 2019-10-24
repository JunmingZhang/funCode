module Fibonacci
       ( fibonacci
       )
where

import Text.Format

fibonacci :: Int -> Int
fibonacci n =
    if n < 0
    then error (format "{0} is less than 0" [show n])
    else
        if n <= 1
        then n
        else (fibonacci (n - 1)) + (fibonacci (n - 2))

printTimes :: Int -> IO()
printTimes 0 = do putStrLn (format "Fib of {0}: {1}" [show 0, show (fibonacci 0)])
                  -- print (format "Fib of {0}: {1}" [show n, show (fibonacci n)])
printTimes n = do 
    printTimes (n - 1)
    putStrLn (format "Fib of {0}: {1}" [show n, show (fibonacci n)])
    -- print (format "Fib of {0}: {1}" [show n, show (fibonacci n)])

main :: IO()
main = do
    printTimes 9

    