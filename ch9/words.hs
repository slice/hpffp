module Words where

myWords :: String -> [String]
myWords s = go [] s
  where
    go acc string
      | string == "" = acc
      | otherwise = go (acc ++ [takeWhile (/=' ') string]) (drop 1 $ dropWhile (/=' ') string)
