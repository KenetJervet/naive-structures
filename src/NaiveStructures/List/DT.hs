module NaiveStructures.List.DT where

import GHC.TypeLits

data DTList a (nat :: Nat) where
  DTNil :: DTList a 0
  DTCons :: a -> DTList a nat -> DTList a (nat + 1)

head :: (1 <= l) => DTList a l -> a
head (DTCons a _) = a
