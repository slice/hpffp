module Kessel where

kessel :: (Ord a, Num b) => a -> b -> a
kessel = undefined

-- λ> :t kessel 1 2
-- kessel 1 2 :: (Ord a, Num a) => a
--
-- `1` and `2` are both general, they stay general the entire way

-- λ> :t kessel 1 (2 :: Integer)
-- kessel 1 (2 :: Integer) :: (Ord a, Num a) => a
--
-- `1` is general so it keeps typeclasses and adds `Num a`,
-- since `1 :: Num a => a`; `2` is concrete but is thrown away, so there is no
-- `Num b => b`.

-- λ> :t kessel (1 :: Integer) 2
-- kessel (1 :: Integer) 2 :: Integer
--
-- `1` is concrete and stays concrete the whole way. `2` is general but is
-- thrown away once again. sad.
