{-# LANGUAGE OverloadedStrings #-}
import Control.Monad
import qualified Data.Map as Map
import Data.Map (Map)
import Text.JSONb
import Data.Monoid
import qualified Data.ByteString as S
import qualified Data.ByteString.Lazy as B
import qualified Data.Trie as T
import Data.Trie (Trie)

type Date = S.ByteString
type ScreenName = S.ByteString
data DateRange = DateRange { begin :: Date, end :: Maybe Date }

alter :: (Maybe a -> Maybe a) -> T.KeyString -> Trie a -> Trie a
alter f k0 = T.alterBy (\k _ mv -> f mv) k0 undefined

hist :: [(ScreenName, Date)] -> Trie DateRange
hist = foldr f T.empty
  where f (screenName, date) = alter (Just . g date) screenName
        g date Nothing   = DateRange date Nothing
        g date (Just dr) = dr { end = Just date }

expDateRange :: DateRange -> JSON
expDateRange (DateRange begin end) =
  Object $ T.fromList [("begin",String begin),("end",maybe Null String end)]

impUser :: JSON -> Maybe StreenName
impUser (Object m) = T.lookup "screen_name" m
impUser _          = Nothing

importing :: JSON -> Maybe [(ScreenName, Date)]
importing (Array os) = mapM_ (impPair ) os
importing _          = Nothing

exporting :: Trie DateRange -> JSON
exporting = Object . fmap expDateRange

main :: IO ()
main = B.getContents >>=
       either (fail . show) return . decode >>=
       maybe (fail "importing failed") return . importing >>=
       B.putStr . encode Compact . exporting . hist
