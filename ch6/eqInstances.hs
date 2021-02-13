module EqInstances where

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (TisAn n) == (TisAn n') = n == n'

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (Two x y) == (Two x' y') = x == x' && y == y'

data StringOrInt =
  TisAnInt Int |
  TisAString String

instance Eq StringOrInt where
  (TisAnInt n) == (TisAnInt n') = n == n'
  (TisAString s) == (TisAString s') = s == s'
  _ == _ = False

data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (Pair x y) == (Pair x' y') = x == x' && y == y'

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (Tuple a b) == (Tuple a' b') = a == a' && b == b'

data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
  (ThisOne t) == (ThisOne t') = t == t'
  (ThatOne o) == (ThatOne o') = o == o'
  _ == _ = False

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (Hello a) == (Hello a') = a == a'
  (Goodbye b) == (Goodbye b') = b == b'
  _ == _ = False
