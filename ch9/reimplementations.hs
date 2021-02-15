module Reimplementations where

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) =
  if x == False
    then False
    else myAnd xs

-- myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) =
  if x
    then True
    else myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) =
  if f x
    then True
    else myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem needle (hay:stack) =
  if needle == hay
    then True
    else myElem needle stack

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
-- squish = concat
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [] = error "woops"
myMaximumBy f xs = go (head xs) xs
  where
    go r [] = r
    go r (x:xs) =
      if f x r == GT
        then go x xs
        else go r xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f [] = error "woops"
myMinimumBy f xs = go (head xs) xs
  where
    go r [] = r
    go r (x:xs) =
      if f x r == LT
        then go x xs
        else go r xs

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = undefined
