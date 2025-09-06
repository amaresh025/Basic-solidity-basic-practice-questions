// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple contract to demonstrate the use of 'assert'
contract Assert {
    // Function that uses assert to check if the input number is not zero
    function exampleAssert(uint num) public pure {
        // Assert ensures that 'num' is NOT equal to 0
        // If num == 0, the transaction fails and all gas is consumed
        // 'assert' is generally used for internal errors or conditions 
        // that should never be false (not for user input validation)
        assert(num != 0);
    }
}
