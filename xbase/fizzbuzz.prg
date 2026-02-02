for i = 1 to 100
    select case i mod 15
    case 0
        ? "FizzBuzz"
    case else
        select case i mod 3
        case 0
            ? "Fizz"
        case else
            select case i mod 5
            case 0
                ? "Buzz"
            case else
                ? i
            endselect
        endselect
    endselect
next i
