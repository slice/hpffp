module Parametricity where

impossible :: a -> a
impossible x = x

-- impl 1  :]
comf1 :: a -> a -> a
comf1 x y = x

-- impl 2  c:
comf2 :: a -> a -> a
comf2 x y = y

third :: a -> b -> b
third a b = b
