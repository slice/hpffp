module Summy where

summy :: (Eq a, Num a) => a -> a
summy 0 = 0
summy n = summy (n - 1) + n
