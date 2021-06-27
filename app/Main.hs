module Main where


main = putStrLn "Hello, recursive functions!"

zero :: [Int] -> [Int]
zero [] = [0]

suc :: [Int] -> [Int]
suc [x] = [x+1]

proj :: Int -> Int -> [Int] -> [Int]
proj n m c = [c !! (m - 1)]

comb :: ([Int]->[Int]) -> ([Int]->[Int]) -> [Int]->[Int]
comb f g l = f l ++ g l

plus :: [Int] -> [Int]
plus (x:xs)
    | last xs == 0 = proj 1 1 [x]
    | otherwise = suc $ proj 3 3 $ [x,last xs] ++ plus([x,(last xs)-1])

mult :: [Int] -> [Int]
mult (x:xs)
    | last xs == 0 = [0] 
    | otherwise = plus ([x] ++ mult([x, (last xs)-1])) 

ex :: [Int] -> [Int]
ex (x:xs)
    | last xs == 0 = [1] 
    | otherwise = mult ([x] ++ ex([x, (last xs)-1])) 

pre :: [Int] -> [Int]
pre (x:xs)
    | x == 0 = zero []
    | otherwise = proj 2 1 ([x-1] ++ pre([x-1]))

monus :: [Int] -> [Int]
monus (x:xs)
    | last xs == 0 = proj 1 1 [x]
    | otherwise = pre(monus [x, (last xs)-1]) 


kay :: Int -> Int -> [Int]->[Int]
kay 0 0 l = zero [] 
kay 0 m l = suc(kay 0 (m-1) l)
kay n m l
    | y == 0 = kay (n-1) m l
    | otherwise = proj (n+1) (n+1) ([x, y-1] ++ kay n m [x, y-1] ) 
    where x = head l
          y = last l

infixl 7 @*
f @* g = comb f g

eq :: [Int] -> [Int]
eq = monus . (kay 2 1 @* plus . (( monus . (proj 2 2 @* proj 2 1)) @* monus . (proj 2 1 @* proj 2 2)  )) 


quo :: [Int] -> [Int]
quo (x:xs)
    | x == 0 = zero []
    | otherwise = plus(q ++ e)
    where e = eq([x] ++ m)
          m = plus(mult(q ++ [last xs]) ++ [last xs])
          q = quo([x-1,last xs])
    
fact :: [Int] -> [Int]
fact (x:xs) 
    | x == 0 = suc $ zero []
    | otherwise = mult $ [x] ++ fact([x - 1])

  
fib :: [Int] -> [Int]
fib (x:xs) 
    | x == 0 = zero []
    | x == 1 = suc $ zero []
    | otherwise = plus $ fib([x-1]) ++ fib([x-2])


acker :: [Int] -> [Int]
acker l
    | m == 0 = plus [n,1]
    | n == 0 = acker(monus [m,1] ++ [1])
    | otherwise = acker(monus([m,1]) ++ acker([m] ++ monus([n,1])))
    where m = head l
          n = last l
