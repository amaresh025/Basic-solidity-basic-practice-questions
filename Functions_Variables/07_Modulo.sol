// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple contract to calculate the remainder (modulo) of two numbers safely
contract SimpleModulo {
    
    // State variables to store the two numbers
    uint num1;
    uint num2;

    // Function to set values of num1 and num2
    function enterNum(uint _num1, uint _num2) public {
        num1 = _num1;
        num2 = _num2;
    }

    // Function to return the remainder when num1 is divided by num2
    // Includes a require statement to prevent modulo by zero
    // 'view' because it only reads the state variables
    function modulo() public view returns (uint) {
        require(num2 != 0, "Cannot modulo by zero"); // Safety check
        return num1 % num2; // Returns the remainder
    }
}
