config const n = 100;

proc fizzbuzz(i: int) {
    if i % 15 == 0 then
        writeln("FizzBuzz");
    else if i % 3 == 0 then
        writeln("Fizz");
    else if i % 5 == 0 then
        writeln("Buzz");
    else
        writeln(i);
}

forall i in 1..n do
    fizzbuzz(i);
