module Main where

-- Control.Applicative exports pure, <$>, <*>
import Control.Applicative

ex1 = fmap (+1) (Just 2)

ex2 = fmap (+1) Nothing

ex3 = fmap (++ " World") getLine

ex4 = (+1) <$> (Just 2)

ex5 = (++) <$> getLine <*> getLine

-- (++) getLine getLine
-- getLine ++ getLine

ex6 = (++) `fmap` getLine <*> getLine
