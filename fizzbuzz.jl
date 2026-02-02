function fizzbuzz(n)
    if n % 15 == 0
        return "FizzBuzz"
    elseif n % 3 == 0
        return "Fizz"
    elseif n % 5 == 0
        return "Buzz"
    else
        return string(n)
    end
end

for i in 1:100
    println(fizzbuzz(i))
end
