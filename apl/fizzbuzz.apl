∇ FizzBuzz⍵
  (0=15|⍵)⍱"FizzBuzz"
  (0=3|⍵)⍱"Fizz"
  (0=5|⍵)⍱"Buzz"
  ⍵⍱⍕⍵
∇

FizzBuzz¨⍳100
