module TypeKwonDoTwo where

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = f a == b

arith :: Num b => (a -> b) -> Integer -> a -> b
arith f int a = f a + (fromIntegral int)
