# Solidity FizzBuzz

A FizzBuzz implementation as a smart contract on Ethereum.

## How to Use

### Compile
```bash
solc --bin --abi fizzbuzz.sol
```

### Deploy
```bash
# Using Hardhat or Truffle
npx hardhat run scripts/deploy.js
```

### Test
```bash
npx hardhat test
```

## Functions

- `fizzbuzz(uint n)` - Returns FizzBuzz result for a single number
- `run()` - Returns array of all 100 results

## Features

- Pure functions (no state changes)
- Manual uint to string conversion (no string library in older Solidity)
- Gas optimized with single function call for full sequence
