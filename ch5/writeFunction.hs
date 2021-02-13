module WriteFunction where

i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b
c'' x y = x
-- yup, same thing!

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = concat [x, x] -- funny

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = (bToC (aToB a))
-- woo-oo! type tetris

a :: (a -> c) -> a -> a
a f x = x

a' :: (a -> b) -> a -> b
a' aToB a = aToB a
