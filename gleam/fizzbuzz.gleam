import gleam/io
import gleam/string

pub fn fizzbuzz(n: Int) -> String {
  case n % 15 {
    0 -> "FizzBuzz"
    _ -> case n % 3 {
      0 -> "Fizz"
      _ -> case n % 5 {
        0 -> "Buzz"
        _ -> int.to_string(n)
      }
    }
  }
}

pub fn main() {
  io.println("1")
  let list = list.range(2, 101)
  list.each(fn(n) {
    io.println(fizzbuzz(n))
  })
}
