fizzbuzz(X) :-
    (0 is X mod 15, write('FizzBuzz');
     0 is X mod 3, write('Fizz');
     0 is X mod 5, write('Buzz');
     write(X)),
    nl.

:- initialization(main).

main :-
    forall(between(1, 100, X), fizzbuzz(X)).
