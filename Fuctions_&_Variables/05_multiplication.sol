// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Multiply{
  // State variables to store the numbers
    uint first;
    uint second;

    // Function to set values for 'first' and 'second'
    // Takes two inputs and assigns them to the state variables
    function numbers(uint _first, uint _second) public {
        first = _first;
        second = _second;
    }

    // Function to return the multiplication of 'first' and 'second'
    // Marked as 'view' because it only reads data, no state changes
    function multiply() public view returns (uint) {
        return first * second;
    }
}