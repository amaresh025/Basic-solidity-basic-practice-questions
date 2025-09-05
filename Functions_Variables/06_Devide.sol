// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Divide {

    uint numerator;
    uint denominator;

    // Function to input/set numerator and denominator
    function enterNum(uint _numerator, uint _denominator) public {
        numerator = _numerator;
        denominator = _denominator;
    }

    // Function to perform safe division
    // 'view' because it only reads state variables, does not modify blockchain
    function divide() public view returns (uint) {
        // Check to prevent division by zero
        require(denominator != 0, "Cannot divide by zero");

        // Return the result of numerator divided by denominator
        return numerator / denominator;
    }
}
