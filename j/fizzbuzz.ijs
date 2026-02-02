fizzbuzz=: 3 :0
  if. 0 = 15 | y do. 'FizzBuzz'
  elseif. 0 = 3 | y do. 'Fizz'
  elseif. 0 = 5 | y do. 'Buzz'
  else. ": y
  end.
)

fizzbuzz"0 i.100
