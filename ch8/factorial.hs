module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- factorial 4 = 4 * factorial (4 - 1)
--             = 4 * factorial 3
--             = 4 * 3 * factorial (3 - 1)
--             = 4 * 3 * factorial 2
--             = 4 * 3 * 2 * factorial (2 - 1)
--             = 4 * 3 * 2 * factorial 1
--             = 4 * 3 * 2 * 1 * factorial (1 - 1)
--             = 4 * 3 * 2 * 1 * 1
--             = 24
