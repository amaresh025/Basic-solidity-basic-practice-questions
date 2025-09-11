// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Deposit {
    // Track each user's deposited ETH
    mapping(address => uint) public balances;

    // Deposit ETH into contract
    function deposit() public payable {
        // Add sent ETH to sender's balance
        balances[msg.sender] += msg.value;
    }
}
