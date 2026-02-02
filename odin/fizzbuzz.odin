package main

import "core:fmt"

main :: proc() {
    for i in 1..=100 {
        when {
            i % 15 == 0 do fmt.println("FizzBuzz")
            i % 3 == 0  do fmt.println("Fizz")
            i % 5 == 0  do fmt.println("Buzz")
            else do fmt.println(i)
        }
    }
}
