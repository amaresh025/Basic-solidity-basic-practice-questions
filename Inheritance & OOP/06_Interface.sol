// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Define an interface "A"
// Interfaces only declare functions but do not provide implementation
interface A {
    function get() external pure returns (uint);
}

// Contract B implements interface A
contract B is A {
    // Implement the "get" function declared in interface A
    // This function returns the fixed value 23
    function get() external override pure returns (uint) {
        return 23;
    }
}

// Contract C inherits from contract B
contract C is B {
    // New function "getNum" defined only in C
    // This function returns the fixed value 8
    function getNum() public pure returns (uint) {
        return 8;
    }
}
