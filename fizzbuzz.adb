with Ada.Text_IO; use Ada.Text_IO;

procedure FizzBuzz is
    function Fizz_Buzz(N : Integer) return String is
    begin
        if N mod 15 = 0 then
            return "FizzBuzz";
        elsif N mod 3 = 0 then
            return "Fizz";
        elsif N mod 5 = 0 then
            return "Buzz";
        else
            return Integer'Image(N);
        end if;
    end Fizz_Buzz;
begin
    for I in 1 .. 100 loop
        Put_Line(Fizz_Buzz(I));
    end loop;
end FizzBuzz;
