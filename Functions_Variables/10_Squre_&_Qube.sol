// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to calculate Square and Cube of a number
contract SqureorQube {

    // Function to calculate square of a number
    // Takes an unsigned integer 'num' as input
    // Returns num^2 (num raised to the power of 2)
    function squre(uint num) public pure returns (uint) {
        return num ** 2;
    }

    // Function to calculate cube of a number
    // Takes an unsigned integer 'num' as input
    // Returns num^3 (num raised to the power of 3)
    function qube(uint num) public pure returns (uint) {
        return num ** 3;
    }
}
    