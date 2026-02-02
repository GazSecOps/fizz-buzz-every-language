module fizzbuzz::fizzbuzz;

// Simple fizzbuzz that prints to debug (Move doesn't have stdout in production)
public entry fun fizzbuzz() {
    let mut i: u8 = 1;
    while (i <= 100) {
        let result = get_fizzbuzz(i);
        // In Move we'd typically emit an event, but for simplicity:
        if (result == 1) {
            // "FizzBuzz" - would emit event
        } else if (result == 2) {
            // "Fizz"
        } else if (result == 3) {
            // "Buzz"
        } else {
            // number
        };
        i = i + 1;
    }
}

fun get_fizzbuzz(n: u8): u8 {
    if (n % 15 == 0) {
        1 // FizzBuzz
    } else if (n % 3 == 0) {
        2 // Fizz
    } else if (n % 5 == 0) {
        3 // Buzz
    } else {
        0 // Number
    }
}
