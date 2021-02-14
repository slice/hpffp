module Division where

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where
    go n d count
      | n < d = (count, n)
      | otherwise = go (n - d) d (count + 1)

-- dividedBy 15 2
-- 13 2  (1 time)
-- 11 2  (2 times)
-- 9  2  (3 times)
-- 7  2  (4 times)
-- 5  2  (5 times)
-- 3  2  (6 times)
-- 1  2  (7 times)
--
-- result: (7, 1)
