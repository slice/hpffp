module WordNumber where

import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord n = intercalate "-" $ map wordNumber $ digits n

digits :: Int -> [Int]
digits n
  | n == 0 = [0]
  | otherwise = go 0 []
  where
    an = abs n
    go :: Int -> [Int] -> [Int]
    go c acc
      | places == 0 = acc
      | otherwise = go (c + 1) acc ++ [places `mod` 10]
      where
        places = an `div` 10 ^ c

wordNumber :: Int -> String
wordNumber 0 = "zero"
wordNumber 1 = "one"
wordNumber 2 = "two"
wordNumber 3 = "three"
wordNumber 4 = "four"
wordNumber 5 = "five"
wordNumber 6 = "six"
wordNumber 7 = "seven"
wordNumber 8 = "eight"
wordNumber 9 = "nine"
wordNumber _ = error "do not perceive me"
