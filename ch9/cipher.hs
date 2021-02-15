module Cipher where

import Data.Char

rotator :: Int -> (Int -> Int -> Int) -> String -> String
rotator n op = fmap $ process . toLower
  where
    a = ord 'a'
    rotate c = chr $ ((ord c - a `op` n) `mod` 26) + a
    process c =
      if isLower c
        then rotate c
        else c

caesar :: Int -> String -> String
caesar = (`rotator` (+))

unCaesar :: Int -> String -> String
unCaesar = (`rotator` (-))
