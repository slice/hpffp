module Ch4 where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

myAbs :: Integer -> Integer
myAbs n = if n < 0 then negate n else n

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f a b = ((snd a, snd b), (fst a, fst b))

x = (+)

f2 xs = w + 1
  where w = length xs

ident x = x

f3 (a, b) = a
