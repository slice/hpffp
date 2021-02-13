{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1

x = 5
y = x + 5
w = y * 10 -- probably Num a => a

z y = y * 10 -- Num a => a -> a

f = 4 / y -- Fractional a => a ??????
          -- WE WIN

x2 = "Julie"
y2 = " <3 "
z2 = "Haskell"
f2 = x2 ++ y2 ++ z2 -- :: [Char]  :P
