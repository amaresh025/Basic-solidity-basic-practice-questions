// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract UpdateMap {

    // Mapping to store balances of addresses
    mapping (address => uint) myMap;

    // Function to set (add) initial balance for the caller
    // This will overwrite the previous balance with the new one
    function addBalance(uint balance) public {
        myMap[msg.sender] = balance;
    }

    // Function to update (increase) the balance of the caller
    // It adds the given amount to the existing balance
    function updateBalance(uint balance) public {
        myMap[msg.sender] = myMap[msg.sender] + balance;
    }

    // Function to check the balance of any given address
    // 'view' because it does not modify the blockchain state
    function getBalance(address _addr) public view returns (uint) {
        return myMap[_addr];
    }
}
