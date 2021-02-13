module Sing where

fstString :: [Char] -> [Char]
fstString x = x ++ "in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x /= y) then concat[fstString x, "\n", sndString y] else "meh"
  where x = "Singin"
        y = "Somewhere"
