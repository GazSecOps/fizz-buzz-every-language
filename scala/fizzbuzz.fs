let fizzbuzz n =
    match n % 3, n % 5 with
    | 0, 0 -> "FizzBuzz"
    | 0, _ -> "Fizz"
    | _, 0 -> "Buzz"
    | _ -> string n

[<EntryPoint>]
let main argv =
    for i in 1 .. 100 do
        printfn "%s" (fizzbuzz i)
    0
