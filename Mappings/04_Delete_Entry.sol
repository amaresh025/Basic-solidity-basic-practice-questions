// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract DeleteEntry {
    // Mapping to store balances of addresses
    mapping(address => uint) public Balance;

    // Function to add or set balance for the caller (msg.sender)
    function addBalance(uint balance) public {
        Balance[msg.sender] = balance;  
        // This will overwrite previous balance with the new one
    }

    // Function to delete/reset balance of the caller (msg.sender)
    function deleteBalance() public {
        delete Balance[msg.sender];  
        // This sets the balance of msg.sender back to default (0)
    }
}
