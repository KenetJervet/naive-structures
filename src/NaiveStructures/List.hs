{-# LANGUAGE NoImplicitPrelude #-}

module NaiveStructures.List where

data List a = Nil | Cons a (List a)
