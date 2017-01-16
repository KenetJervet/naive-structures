module NaiveStructures.List.DT where

import GHC.TypeLits

data List a = Nil | Cons a (List a)

data DTList a (nat :: Nat) where
  DTNil :: DTList a 0
  DTCons :: a -> DTList a nat -> DTList a (nat + 1)
