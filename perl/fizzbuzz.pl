use v5.10;

for my $i (1..100) {
    if ($i % 15 == 0) {
        say "FizzBuzz";
    } elsif ($i % 3 == 0) {
        say "Fizz";
    } elsif ($i % 5 == 0) {
        say "Buzz";
    } else {
        say $i;
    }
}
