module Main where

import Lib

main :: IO ()
main = someFunc

f x = (take 1 x)++take 1 x

delete :: Int -> [Int] -> [Int]
--base cases
delete x []  = []
-- etsi täsmäävä ja yritä poistaa se
delete y (x:xs)
    | ((y==x) && firstFoundAndErased==False) = delete y xs
    | ((y==x) && firstFoundAndErased==True) = take 1 [x]++delete y xs
    | (y/=x) = take 1 [x]++delete y xs
    where firstFoundAndErased = False

takeEvens :: [Int] -> [Int]
takeEvens [] = []
takeEvens (x:xs)
    | (mod x 2 == 0) = take 1 [x]++takeEvens xs
    | otherwise = takeEvens xs

(+++) :: [Int] -> [Int] -> [Int]
(+++) [] []= []
(+++) (x:xs) []= x:xs
(+++) [] (x:xs) = x:xs
-- lisätään toisen listan alkiot ensimmäisen listan alkoiden perään yksi alkio kerrallaan
-- kutsumalla funktiota itseään aina ensimmäisellä listalla ja toisen listan käsitettelyssä olevalla alkiolla
(+++) x (y:ys) =  (+++) (x++[y]) ys

myConcat :: [[Int]] -> [Int]
myConcat [] = []
myConcat (x:xs) = x++myConcat xs



