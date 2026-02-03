// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FizzBuzz {
    function fizzbuzz(uint n) public pure returns (string memory) {
        if (n % 15 == 0) {
            return "FizzBuzz";
        } else if (n % 3 == 0) {
            return "Fizz";
        } else if (n % 5 == 0) {
            return "Buzz";
        } else {
            return uintToString(n);
        }
    }

    function run() public pure returns (string[] memory) {
        string[] memory results = new string[](100);
        for (uint i = 0; i < 100; i++) {
            results[i] = fizzbuzz(i + 1);
        }
        return results;
    }

    function uintToString(uint v) internal pure returns (string memory) {
        if (v == 0) {
            return "0";
        }
        uint maxlength = 100;
        bytes memory reversed = new bytes(maxlength);
        uint i = 0;
        while (v != 0) {
            uint remainder = v % 10;
            v = v / 10;
            reversed[i++] = bytes1(uint8(48 + remainder));
        }
        bytes memory s = new bytes(i);
        for (uint j = 0; j < i; j++) {
            s[j] = reversed[i - j - 1];
        }
        return string(s);
    }
}
