module Main where

only_evens lst =
    let subHelper subList n =
            if n == 0
            then True
            else
                if (subList !! (n - 1)) `mod` 2 == 0
                then subHelper subList (n - 1)
                else False
        
        helper ind result =
                if ind == (length lst)
                then result
                else
                    let res = (subHelper (lst !! ind) (length (lst !! ind)))
                    in
                        if res
                        then helper (ind + 1) (result ++ [(lst !! ind)])
                        else helper (ind + 1) result
    in
        helper 0 []

main :: IO ()
main = do
    print (only_evens [[1, 2, 4], [4, 0, 6], [22, 4, 3], [2]])