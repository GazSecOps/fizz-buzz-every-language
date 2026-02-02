%lang starknet

@external
func print{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr: felt*}(
    value: felt
) {
}

func fizzbuzz{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr: felt*}(n: felt) {
    let div3 = n % 3;
    let div5 = n % 5;
    if div3 == 0 {
        if div5 == 0 {
            print('FizzBuzz');
        } else {
            print('Fizz');
        }
    } else {
        if div5 == 0 {
            print('Buzz');
        } else {
            print(n);
        }
    }
}

func main{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr: felt*}() {
    tempvar i = 1;
    loop:
        if i <= 100 {
            fizzbuzz(i);
            i = i + 1;
            jump loop;
        }
        return ();
}
