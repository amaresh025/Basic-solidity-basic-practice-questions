// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to check if a number is Even or Odd
contract EvenorOdd {

    // Function to check whether a given number is even or odd
    // Input: uint num (any non-negative integer)
    // Output: Returns "Even" if divisible by 2, otherwise "Odd"
    function chec_Even_or_Odd(uint num) public pure returns (string memory) {
        if(num % 2 == 0) {
            // If remainder after dividing by 2 is 0, then it's Even
            return "Even";
        } else {
            // Otherwise, it's Odd
            return "Odd";
        }
    }
}
