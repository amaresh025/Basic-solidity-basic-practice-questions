// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple contract to demonstrate the use of 'require'
contract SimpleRequire {
    // State variable to store a number
    uint num;

    // Function to set the number
    function enterNum(uint _num) public {
        // Store the input number in state variable
        num = _num;

        // Require condition: the number must be greater than 100
        // If the condition is false, transaction reverts with error message
        require(num > 100, "Number must be greater than 100");
    }
}
