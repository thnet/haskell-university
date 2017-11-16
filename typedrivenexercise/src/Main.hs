module Main where

import Prelude hiding(error)


main :: IO ()
main = do
  putStrLn "hello world"


ex1 :: (Bool,Ordering)
ex1 = (True, LT )

ex2 :: Either Bool Ordering
ex2 = Left True

ex3 :: (Bool,Either () Bool)
ex3 = (True, Left ())

ex4 :: Either (Either () ()) (Either Bool Ordering)
ex4 = Right (Right  EQ)

ex5 :: Bool -> Bool
ex5 = \x->True

ex6 :: Bool -> Bool -> Ordering
ex6 = \x-> \y -> EQ




ex10 :: (a,b) -> a
ex10 = \(a,y)->a

--eka argumentti on funktio a->b, olkoon se x
--toka argumentti on funktio b->c, olkoon se y
--palautuu funktio a->c
-- a saadaan ekasta syötteestä, eli sen pitäisi olla x?
-- c saadaa kutsumalla tokaa argumenttia eli y:tä b:llä, joka saadaan kutsumalla ekaa argumenttia eli x:ää
-- a:ta with saa a->b stä
-- Nyt sulla on mm x kahdessa merkityksessä, joten eka vaihe on nimetä toinen uudestaan.
-- Sitten huomaa, että eka x on a->b, y on b->c ja toka x on a.



--    If you need a value of a function type (such as a->b), you can write \x -> y. Here x will have type a and you must make sure that y will have type b.
--    If you have a function of type a->b and you need b, just call the function!
--    If you have a function of type a->b and you need the a, you can't get from the function.

ex12 :: (a -> b) -> (b -> c) -> (a -> c)
ex12 x y= \g -> y (x g)

--eka argumentti on funktio, olkoon se x
--toka argumentti on pari, olkoon se y,z
--palautetaan b, joka saadaan kutsumalla ekaa funktiolta z:lla
ex13 :: (a -> b) -> (c,a) -> b
ex13 = \x -> \(y,z) -> (x z)

ex14 :: [a] -> [a] -> [a]
ex14 = \x -> \x ->x

-- eka argumentti on pari, toka argumentti on funktio.
--Palautetaan pari, jossa ekan argumentin vasen puoli a parista eli x ja c,
-- toisena argumenttina olevaa funktiota kutsumalla sitä kahdella argumentilla
ex15 :: (a, b) -> (a -> b -> c) -> (a,c)
ex15 = \(x,y) -> \z -> (x,z x y)
