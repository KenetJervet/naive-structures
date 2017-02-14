module NaiveStructures.Trie where

import           Control.Monad
import           Data.Map      as M
import           Data.Maybe

data Trie a = Trie (Maybe a) (Map Char (Trie a))

find :: String -> Trie a -> Maybe a
find [] (Trie a _) = a
find (k:ks) (Trie a s) = M.lookup k s >>= find ks
