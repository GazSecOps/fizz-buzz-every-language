#include "share/atspre_staload.hats"

implement main0 () = {
  var i: int
  for (i := 1; i <= 100; i := i + 1) {
    if i mod 15 = 0 then
      println! ("FizzBuzz")
    else if i mod 3 = 0 then
      println! ("Fizz")
    else if i mod 5 = 0 then
      println! ("Buzz")
    else
      println! (i)
  }
}
