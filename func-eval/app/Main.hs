module Main where

import Lib

main :: IO ()
main = someFunc


--Author: Timo Holm

--a) Derive, without a computer, the result of expression (\x -> x 2 * 2) (\x -> x+x)

(\x -> x 2 * 2) (\x -> x+x)
== {- vasemmalla suluissa on ensimmäinen funktio, joka ottaa x:n argumenttina.
Välilyönti on funtiokutsu ja oikea sulkulauseke x. Sijoitetaan siis x=(\x->x+x) -}
(\x -> x+x) 2*2
--pistetään lauseke * operaattorista poikki ja laitetaan ensimmäinen 2 sisään x:n paikalle
(2+2)*2
--lasketaan
8

--b) Derive, without a computer, the result of expression unwords . map sort . words,
-- where the operator . is defined as f . g = \x -> f (g x) and is right associative.
-- (Note that when doing this expression you need to use this definition: the (.) is not special.
--Just replace it with the definition as you would do to any other function)

f . g = \x -> f (g x)
unwords . map sort . words

-- {- sijoitetaan ensimmäinen . joka on oikealle assosiatiivinen funktio, joka ottaa f ja g -argumentit
-- eli tässä tapauksessa f=unwords ja g="map sort . words" -}
\x -> unwords ((map sort . words)x)

-- {- sijoitetaan jäljelle jäänyt piste, jolloin f=map sort ja g= words -}
\x -> unwords ((\x->(map sort (words x))x))
-- sijoitetaan x:n paikalle x
\x -> unwords (map sort (words x))

--c) Given the definition f = \x -> x:f (x+1), derive the result of expression f 5.
-- (The operator : adds an element to the head of a list
f = \x -> x:f (x+1)
f 5
(\x -> x:f (x+1)) 5
5:(f(5+1))
-- kaksoispiste-operaatori lisää elementin listan alkuun.
-- Lauseke on kuitenkin päättymätön rekursio, koska se sisältää f:n ja f kutsuu edelleen itseään ilman lopetusehtoa.
