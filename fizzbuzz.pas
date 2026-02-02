program FizzBuzz;

var
  i: Integer;
  result: String;

begin
  for i := 1 to 100 do
  begin
    if (i mod 15 = 0) then
      result := 'FizzBuzz'
    else if (i mod 3 = 0) then
      result := 'Fizz'
    else if (i mod 5 = 0) then
      result := 'Buzz'
    else
      result := IntToStr(i);

    WriteLn(result);
  end;
end.
