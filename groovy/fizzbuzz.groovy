def fizzbuzz(i) {
    if (i % 15 == 0) {
        "FizzBuzz"
    } else if (i % 3 == 0) {
        "Fizz"
    } else if (i % 5 == 0) {
        "Buzz"
    } else {
        i.toString()
    }
}

(1..100).each { i ->
    println(fizzbuzz(i))
}
