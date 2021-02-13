module MatchTheTypes where

import Data.List (sort)

f :: Float
-- f :: Num a => a
f = 1.0

-- doesn't work bc fractional is above num

-- f :: Float
f2 :: Fractional a => a
f2 = 1.0

-- f :: Float
f3 :: RealFrac a => a
f3 = 1.0

-- freud :: a -> a
freud :: Ord a => a -> a
freud x = x

freud' :: Int -> Int
freud' x = x

myX = 1 :: Int
sigmund :: Int -> Int
-- sigmund :: a -> a
sigmund x = myX
-- `a` /= `a`

sigmund' :: Int -> Int
-- sigmund' :: Num a => a -> a
sigmund' x = myX
-- `Num a` /= `Int`

-- jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)

-- young :: [Char] -> Char
young :: Ord a => [a] -> a
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
-- signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs)
