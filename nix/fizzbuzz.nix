# Nix FizzBuzz
# Nix is a purely functional package manager

{ pkgs ? import <nixpkgs> {} }:

pkgs.writeScript "fizzbuzz" ''
  #!${pkgs.bash}/bin/bash
  for i in $(seq 1 100); do
    if (( i % 15 == 0 )); then
      echo "FizzBuzz"
    elif (( i % 3 == 0 )); then
      echo "Fizz"
    elif (( i % 5 == 0 )); then
      echo "Buzz"
    else
      echo "$i"
    fi
  done
''
