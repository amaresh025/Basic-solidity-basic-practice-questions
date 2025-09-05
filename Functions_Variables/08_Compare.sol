// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to compare two numbers and return the bigger one
contract SimpleCompare{

    // Function to return the bigger number between 'a' and 'b'
    // 'pure' because it does not read or modify any state variable
    function bigger(uint a, uint b) public pure returns (uint) {
        // Ternary operator:
        // If 'a' is greater than or equal to 'b', return 'a'
        // Otherwise, return 'b'
        return a >= b ? a : b;
    }
}
