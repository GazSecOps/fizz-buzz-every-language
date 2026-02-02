proc fizzbuzz(n: int): string =
  if n mod 15 == 0:
    return "FizzBuzz"
  elif n mod 3 == 0:
    return "Fizz"
  elif n mod 5 == 0:
    return "Buzz"
  else:
    return $n

for i in 1..100:
  echo fizzbuzz(i)
