// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract BoolReturn {
    // Mapping to store balances of addresses
    mapping(address => uint) public Balance;

    // Extra mapping to track if a balance has been set (true/false)
    mapping(address => bool) public isSet;

    // Function to set balance for the caller (msg.sender)
    function setBalance(uint balance) public {
        Balance[msg.sender] = balance;   // Store balance for this address
        isSet[msg.sender] = true;        // Mark this address as "exists"
    }

    // Function to delete/reset balance for the caller (msg.sender)
    function deleteBalance() public {
        delete Balance[msg.sender];      // Reset balance to default (0)
        isSet[msg.sender] = false;       // Mark this address as "does not exist"
    }
}