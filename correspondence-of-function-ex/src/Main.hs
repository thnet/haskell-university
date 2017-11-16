module Main where

--import functions for charactering handling
import Data.Char (toLower, toUpper)

main :: IO ()
main = do
  putStrLn "hello world"

--   function shout that converts a string into upper case and adds an exclamation mark at the end.

--type declaration
shout:: String -> String

--examples
-- shout "abc" == ABC!
-- Shout "" == ""

--function definition
shout a =case a of
    [] -> ""
    -- call toUpper for first element
    -- call map to Upper for other elements
    (x:xs) -> toUpper x : map toUpper xs++("!")

--    Function shoutWords that does the same as shout but adds an exclamation mark at the end of each word.

shoutWords:String->String
--examples
-- shoutWords "abc" == "A!B!C!"
-- shoutWords "" == ""
--function definition
shoutWords = case
    [] -> ""
    -- call toUpper for first element
    -- call map to Upper for other elements
    (x:xs) -> toUpper x : map toUpper xs++("!")


--    Function shoutLines that does the same as shout, but adds the exclamation mark at the end of each line.

--(Hint. You can write strings with linebreaks by using the '\n' symbol. For example "first line\nsecond line".)
