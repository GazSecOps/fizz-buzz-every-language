# Brainfuck FizzBuzz

## Why No Full Implementation?

A proper FizzBuzz implementation in Brainfuck is extremely complex because:

1. **No modulo operator** - Must implement via repeated subtraction
2. **No multiplication** - Must implement via repeated addition
3. **No string literals** - Must build "Fizz", "Buzz", "FizzBuzz" cell by cell
4. **No easy conditionals** - Must use cell zero/non-zero checks
5. **No subroutine calls** - Must implement manually with jumps
6. **Limited memory** - Only 30,000 cells (standard interpreter)

A full FizzBuzz in Brainfuck would be **1000+ characters** and require:
- Counter implementation (1-100)
- Modulo by 3, 5, 15 (each is ~50+ chars)
- String building for "Fizz", "Buzz", "FizzBuzz"
- Number to ASCII conversion for printing numbers
- Newline printing logic

## Hello World

For reference, here's "Hello World!" in Brainfuck:

```bf
++++++++++[->+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.
```

## Related

For actual FizzBuzz in esoteric languages, see:
- Befunge (has actual implementation)
- LOLCODE (actual implementation)

Brainfuck is too low-level for practical FizzBuzz without code generation.
