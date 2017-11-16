module Main where

main :: IO ()
main = do
  putStrLn "hello world"



--    Function that reverses each word in a string?

--type declaration
reverseString :: [Char] -> [Char]
--function declaration dummy example
reverseString x = "not implemented yet"
--example call
reversed = reverseString "abc"


--   Function that counts the number of empty lines in a string?

countLines :: [Char] -> Int
--function declaration dummy example
countLines x = 0
--example call
lines = countLines "abc"


--    Function that applies a given operation to every word in a string?

-- a is function to does some operation to string
a:: [Char] -> [Char]
-- declaration dummy examples
a x = "something"

operate :: [Char] -> a -> [Char]
--function declaration dummy example
operate x a = "operatedString"
--example call
operatedString = operate "abc" a


--    Function that sorts a list using sorting order that is given by the caller of the function?

sorter :: Ord a => [a] -> Ordering -> [a]
--function declaration dummy example
sorter [a] x = [a]
-- example call with starting greater to lesser than ordering
sorted = sorter [10,4,10] GT
