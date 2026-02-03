# Solana FizzBuzz

A FizzBuzz implementation as a Solana program (Rust).

## How to Use

### Build
```bash
cargo build-bpf
```

### Deploy
```bash
solana program deploy target/deploy/solana_fizzbuzz.so
```

### Run (via client)
```javascript
const result = await program.methods.run().rpc();
```

## Features

- Rust-based Solana program
- Logs FizzBuzz results 1-100 to program logs
- Zero state (no accounts needed)
- Pure computation

## Notes

This is a demonstration program. Real Solana programs typically:
- Read and write to program accounts
- Process instructions from clients
- Manage persistent state

This one just computes and logs FizzBuzz.
