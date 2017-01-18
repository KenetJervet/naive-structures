{-# LANGUAGE NoImplicitPrelude    #-}
{-# LANGUAGE UndecidableInstances #-}

module NaiveStructures.Tree.DT where

import           Data.Type.Bool
import           GHC.TypeLits

type family Max (a :: Nat) (b :: Nat) :: Nat
type instance Max a b = If (a <=? b) b a

data DTSubTree a (depth :: Nat) where
  DTSTNil :: DTSubTree a 0
  DTSTCons :: DTTree a depth1
           -> DTSubTree a depth2
           -> DTSubTree a (Max depth1 depth2)

data DTTree a (depth :: Nat) where
  DTNil :: DTTree a 0
  DTNode :: a
         -> DTSubTree a depth
         -> DTTree a (depth + 1)
