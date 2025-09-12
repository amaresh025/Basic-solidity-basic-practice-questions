// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract DepositEvent {
    // Event: trigger hota hai jab koi deposit kare
    event depositmade(address indexed user, uint value);

    // Store balance of each user
    mapping (address => uint) public Balances;

    // Deposit function: accept ether and update balance
    function deposit() public payable {
        Balances[msg.sender] += msg.value;           // add ether to sender's balance
        emit depositmade(msg.sender, msg.value);     // emit event for logging
    }
}
