use std::io;

fn fizzbuzz(n: u32) -> &'static str {
    match (n % 15, n % 3, n % 5) {
        (0, _, _) => "FizzBuzz",
        (_, 0, _) => "Fizz",
        (_, _, 0) => "Buzz",
        _ => panic!(),
    }
}

fn main() {
    for n in 1..=100 {
        if n % 15 == 0 {
            println!("FizzBuzz");
        } else if n % 3 == 0 {
            println!("Fizz");
        } else if n % 5 == 0 {
            println!("Buzz");
        } else {
            println!("{}", n);
        }
    }
}
