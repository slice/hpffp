module Ch3 where

curryNoExclam s = take 16 s

curryY s = s !! 4

curryAwesome s = drop 9 s

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex i = "Curry is awesome!" !! i

rvrs s = concat [drop 9 s, " ", take 2 (drop 6 s), " ", take 5 s]
