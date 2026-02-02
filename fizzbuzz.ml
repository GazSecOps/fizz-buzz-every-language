let fizzbuzz n =
  match n mod 3, n mod 5 with
  | 0, 0 -> "FizzBuzz"
  | 0, _ -> "Fizz"
  | _, 0 -> "Buzz"
  | _ -> string_of_int n

let () =
  for i = 1 to 100 do
    Printf.printf "%s\n" (fizzbuzz i)
  done
