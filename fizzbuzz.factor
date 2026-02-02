: fizzbuzz ( n -- str )
    dup 15 mod 0 =
    [ drop "FizzBuzz" ]
    [ dup 3 mod 0 =
      [ drop "Fizz" ]
      [ dup 5 mod 0 =
        [ drop "Buzz" ]
        [ number>string ] if ] if ] if ;

1 100 [1..a] [ fizzbuzz print nl ] each
