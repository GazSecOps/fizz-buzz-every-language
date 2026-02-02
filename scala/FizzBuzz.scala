object FizzBuzz {
  def fizzbuzz(n: Int): String = {
    (n % 3, n % 5) match {
      case (0, 0) => "FizzBuzz"
      case (0, _) => "Fizz"
      case (_, 0) => "Buzz"
      case _ => n.toString
    }
  }

  def main(args: Array[String]): Unit = {
    for (i <- 1 to 100) {
      println(fizzbuzz(i))
    }
  }
}
