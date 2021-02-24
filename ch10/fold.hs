module Fold where

-- a fold that associates to the right
-- (1 + (2 + (3 + (4 + (5 + 0)))))
--
-- * works with infinite lists, because `foldr const 0 [1..] == 1`
-- * is a good default choice whenever you want to transform data structures,
--   be they finite or infinite
myfoldr ::
  (a -> b -> b) -- item -> old acc -> new acc
  -> b          -- "accumulator"/"zero", "the rest of the fold"
  -> [a]        -- list of items
  -> b          -- final accumulator
myfoldr f acc [] = acc
myfoldr f acc (x:xs) = f x (myfoldr f acc xs)

-- a fold that associates to the left
-- (((((0 + 1) + 2) + 3) + 4) + 5)
--
-- * self-calls (tail-call) through the list, only beginning to produce values
--   after reaching the end of the list
-- * cannot be used with infinite lists
-- * is nearly useless
myfoldl ::
  (b -> a -> b) -- acc -> item -> new acc
  -> b          -- "accumulator"/"zero"
  -> [a]        -- list of items
  -> b          -- final accumulator
myfoldl f acc [] = acc
myfoldl f acc (x:xs) = foldl f (f acc x) xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs =
  myfoldr (\x b -> f x || b) False xs
