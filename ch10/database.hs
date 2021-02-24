module Database where

import Data.Time

data DatabaseItem
  = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr f []
  where
    f a b =
      case a of
        DbDate utcTime -> utcTime : b
        _ -> b

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr f []
  where
    f a b =
      case a of
        DbNumber int -> int : b
        _ -> b

mostRecent :: [DatabaseItem] -> Maybe UTCTime
mostRecent = foldr f Nothing
  where
    f a b =
      case a of
        DbDate utcTime ->
          case b of
            Nothing -> Just utcTime
            Just lastTime ->
              if utcTime > lastTime
                then Just utcTime
                else b
        _ -> b

sumDb :: [DatabaseItem] -> Integer
sumDb = foldr f 0
  where
    f a b =
      case a of
        DbNumber integer -> b + integer
        _ -> b

avgDb :: [DatabaseItem] -> Double
avgDb items = fromIntegral (sum nums) / fromIntegral (length nums)
  where nums = filterDbNumber items
