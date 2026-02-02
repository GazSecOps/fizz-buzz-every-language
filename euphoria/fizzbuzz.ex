procedure fizzbuzz()
    integer i
    for i = 1 to 100 do
        if remainder(i, 15) = 0 then
            puts(1, "FizzBuzz\n")
        elsif remainder(i, 3) = 0 then
            puts(1, "Fizz\n")
        elsif remainder(i, 5) = 0 then
            puts(1, "Buzz\n")
        else
            printf(1, "%d\n", i)
        end if
    end for
end procedure

fizzbuzz()
