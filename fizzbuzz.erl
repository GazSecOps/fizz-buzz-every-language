-module(fizzbuzz).
-export([main/0]).

fizzbuzz(N) when N rem 15 =:= 0 -> "FizzBuzz";
fizzbuzz(N) when N rem 3 =:= 0 -> "Fizz";
fizzbuzz(N) when N rem 5 =:= 0 -> "Buzz";
fizzbuzz(N) -> integer_to_list(N).

main() ->
    lists:foreach(fun(N) -> io:format("~s~n", [fizzbuzz(N)]) end, lists:seq(1, 100)).
