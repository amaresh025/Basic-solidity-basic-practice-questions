// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract AddressBalanceMap {
    // Mapping to store balances of different addresses
    mapping(address => uint) public firstMap;

    // Function to set/update the balance for a specific address
    // Input: _addr (the address), balance (the amount to set)
    // Output: returns the balance that was set
    function setBalance(address _addr, uint balance) public returns (uint) {
        firstMap[_addr] = balance; // assign balance to the given address
        return balance;            // return the updated balance
    }
}

