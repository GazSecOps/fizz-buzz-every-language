module fizzbuzz

go [1..100] | put <| fizzbuzz x

fizzbuzz x = case x % 15 == 0 of
  True -> "FizzBuzz"
  False -> case x % 3 == 0 of
    True -> "Fizz"
    False -> case x % 5 == 0 of
      True -> "Buzz"
      False -> toString x
