module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
    then putStrLn "what's up?"
  else
    putStrLn "meh"
  where cool v = v == "very cool!"
