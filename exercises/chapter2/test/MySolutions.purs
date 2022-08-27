module Test.MySolutions where

import Prelude

import Data.Int (rem)
import Data.Number as Math

diagonal ∷ Number → Number → Number
diagonal (a::Number) (b::Number) = a*a + b*b # Math.sqrt

circleArea ∷ Number → Number
circleArea (r::Number) = Math.pi * r * r

leftoverCents ∷ Int → Int
leftoverCents (n::Int) = rem n 100