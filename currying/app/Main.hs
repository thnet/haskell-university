module Main where

import Lib

main :: IO ()
main = someFunc

-- Author: Timo Holm

--Function curry that takes a function which has it's arguments wrapped in a pair,
---and returns a function that takes it's arguments in curried form.
--(ie. when applied to rectangleArea :: (Double,Double) -> Double, we get curry rectangleArea :: Double -> Double -> Double

myCurry :: ((a, b) -> c) ->((a -> b->c))
myCurry f= \x->(\y->f(x,y))


--Function uncurry that is inverse of curry.

--(Ie. when applied to function of type Double -> Double -> Double
--it should return function of the type (Double,Double) -> Double
myUnCurry ::(a -> b->c)  -> ((a,b) -> c)
myUnCurry f = \(x,y)->(f x y)

