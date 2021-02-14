module Multy where

-- :D
multy :: (Integral a) => a -> a -> a
multy x y
  | y == 1 = x
  | otherwise = x + multy x (y - 1)
