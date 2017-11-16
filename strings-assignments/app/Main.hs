module Main where


--import functions for charactering handling
import Data.Char (toLower, toUpper)

--   a) function shout that converts a string into upper case and adds an exclamation mark at the end.

--type declaration
shout:: String -> String

--examples
-- shout "abc" == ABC!
-- Shout "" == ""

--function declaration
shout a =case a of
    [] -> ""
    -- call toUpper for first element
    -- call map to Upper for other elements
    (x:xs) -> toUpper x : map toUpper xs++("!")

--  b)  Function shoutWords that does the same as shout but adds an exclamation mark at the end of each word.

--type declaration
shoutWords:: String -> String

--examples
-- shoutWords "hello world" == HELLO! WORLD!
-- shoutWords "hello" == "Hello"

--function declaration
shoutWords a = case a of
    [] -> ""
    ---1. Käy läpi alkiot map-funktiolla map :: (a -> b) -> [a] -> [b]
    -- ja muuta ne isoksi toUpper funktiolla toUpper :: Char -> Char
    -- 2. pilko lause sanoihin words-funktiolla words :: String -> [String]
    -- 3. lisää jokaiseen alkioon !-merkki map-funktiolla map :: (a -> b) -> [a] -> [b]
    -- 4. yhdistä listan elementit merkkijonoksi unwords-funktiolla unwords :: [String] -> String
    (x:xs) -> unwords (map (++ "!") (words (map toUpper a)))


--   c) Function shoutLines that does the same as shout, but adds the exclamation mark at the end of each line.
--(Hint. You can write strings with linebreaks by using the '\n' symbol. For example "first line\nsecond line".)

--type declaration
shoutLines::String -> String

-- examples
-- shoutLines "first line\nsecond line\n" == "FIRST LINE!\SECOND LINE!"
-- shoutLines "oneline" == "oneline!"

shoutLines a = case a of
    [] -> ""
    ---1. Käy läpi alkiot map-funktiolla map :: (a -> b) -> [a] -> [b]
    -- ja muuta ne isoksi toUpper funktiolla toUpper :: Char -> Char
    -- 2. pilko lause riveiksi newline-merkillä lines-funktiolla
    -- 3. lisää jokaiseen alkioon !-merkki map-funktiolla map :: (a -> b) -> [a] -> [b]
     -- 4. yhdistä listan elementit merkkijonoksi unlines-funktiolla unlines :: [String] -> String
    (x:xs) -> unlines (map (++ "!") (lines (map toUpper a)))
