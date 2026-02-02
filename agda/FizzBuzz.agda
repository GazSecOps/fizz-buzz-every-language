module FizzBuzz where

open import Agda.Builtin.Nat
open import Agda.Builtin.Nat.Properties

data FizzBuzzResult : Set where
  Number : Nat -> FizzBuzzResult
  Fizz : FizzBuzzResult
  Buzz : FizzBuzzResult
  FizzBuzz : FizzBuzzResult

fizzbuzz : Nat -> FizzBuzzResult
fizzbuzz n with (n mod? 15) | (n mod? 3) | (n mod? 5)
... | zero _ | _ | _ = FizzBuzz
... | _ | zero _ | _ = Fizz
... | _ | _ | zero _ = Buzz
... | _ | _ | _ = Number n

show : FizzBuzzResult -> String
show (Number n) = primShowNat n
show Fizz = "Fizz"
show Buzz = "Buzz"
show FizzBuzz = "FizzBuzz"
