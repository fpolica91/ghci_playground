module Lib
  ( compoundInterest,
  )
where

compoundInterest :: Int -> Double
compoundInterest 0 = 1000
compoundInterest n = 1.05 * (compoundInterest (n - 1))
