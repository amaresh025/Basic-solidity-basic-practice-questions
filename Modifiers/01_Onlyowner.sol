// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract OnlyOwnerModifier {
    uint public value;              // State variable to store a number
    address public owner = msg.sender;  // Store the address of the deployer (contract owner)

    // Modifier: ensures that only the contract owner can call the function
    modifier checkValue {
        require(msg.sender == owner, "Not owner");
        _; // continue with function execution if the condition passes
    }

    // Function: only the owner can call this
    function setValue(uint _value) public checkValue {
        value = _value;
    }
}
