#!/bin/sed -f

s/^15$/FizzBuzz/
s/^30$/FizzBuzz/
s/^45$/FizzBuzz/
s/^60$/FizzBuzz/
s/^75$/FizzBuzz/
s/^90$/FizzBuzz/

/FizzBuzz/! {
    s/^3$/Fizz/
    s/^6$/Fizz/
    s/^9$/Fizz/
    s/^12$/Fizz/
    s/^18$/Fizz/
    s/^21$/Fizz/
    s/^24$/Fizz/
    s/^27$/Fizz/
    s/^33$/Fizz/
    s/^36$/Fizz/
    s/^39$/Fizz/
    s/^42$/Fizz/
    s/^48$/Fizz/
    s/^51$/Fizz/
    s/^54$/Fizz/
    s/^57$/Fizz/
    s/^63$/Fizz/
    s/^66$/Fizz/
    s/^69$/Fizz/
    s/^72$/Fizz/
    s/^78$/Fizz/
    s/^81$/Fizz/
    s/^84$/Fizz/
    s/^87$/Fizz/
    s/^93$/Fizz/
    s/^96$/Fizz/
    s/^99$/Fizz/
}

/Fizz/! {
    s/^5$/Buzz/
    s/^10$/Buzz/
    s/^20$/Buzz/
    s/^25$/Buzz/
    s/^35$/Buzz/
    s/^40$/Buzz/
    s/^50$/Buzz/
    s/^55$/Buzz/
    s/^65$/Buzz/
    s/^70$/Buzz/
    s/^80$/Buzz/
    s/^85$/Buzz/
    s/^95$/Buzz/
    s/^100$/Buzz/
}
