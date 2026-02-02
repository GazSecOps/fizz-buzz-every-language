def fizzbuzz(n : Int32) : String
  if n % 15 == 0
    "FizzBuzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

(1..100).each do |i|
  puts fizzbuzz(i)
end
