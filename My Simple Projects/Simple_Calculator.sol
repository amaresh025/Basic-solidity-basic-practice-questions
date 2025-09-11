// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SimpleCalculator {

    // Modifier to check numbers are greater than 0
    modifier Require(uint num1, uint num2) {
        require(num1 > 0 && num2 > 0, "num didn't greater than 0");
        _;
    }

    // Add two numbers
    function add(uint num1, uint num2) public pure Require(num1, num2) returns (uint) {
        return num1 + num2;
    }

    // Subtract second number from first
    function subtract(uint num1, uint num2) public pure Require(num1, num2) returns (uint) {
        return num1 - num2;
    }

    // Multiply two numbers
    function multiply(uint num1, uint num2) public pure Require(num1, num2) returns (uint) {
        return num1 * num2;
    }

    // Divide first number by second
    function divide(uint num1, uint num2) public pure Require(num1, num2) returns (uint) { 
        return num1 / num2;
    }
}
