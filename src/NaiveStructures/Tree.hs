{-# LANGUAGE NoImplicitPrelude #-}

module NaiveStructures.Tree where

data Tree a = Nil | Node a [Tree a]
