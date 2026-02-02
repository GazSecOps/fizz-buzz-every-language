let fizzbuzz = n =>
  switch (n mod 15, n mod 3, n mod 5) {
  | (0, _, _) => "FizzBuzz"
  | (_, 0, _) => "Fizz"
  | (_, _, 0) => "Buzz"
  | _ => string_of_int(n)
  }

let () =
  for (i in 1 to 100) {
    Js.log(fizzbuzz(i))
  }
