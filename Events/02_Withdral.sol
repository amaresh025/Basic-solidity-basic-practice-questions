// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract DepositEvent {
    // Event triggered when user deposits Ether
    event DepositMade(address indexed user, uint value);

    // Mapping to store balance of each user
    mapping (address => uint) public Balances;

    // Deposit function: accept Ether and update balance
    function deposit() public payable {
        Balances[msg.sender] += msg.value;           // add Ether to sender's balance
        emit DepositMade(msg.sender, msg.value);     // emit deposit event
    }

    // Event triggered when user withdraws Ether
    event WithdrawMade(address indexed user, uint _value);

    // Withdraw function: reduce balance and send Ether back
    function withdraw(uint _value) public {
        require(Balances[msg.sender] >= _value, "value is not enough"); // check sufficient balance
        Balances[msg.sender] -= _value;            // subtract amount from sender
        payable(msg.sender).transfer(_value);      // send Ether to sender
        emit WithdrawMade(msg.sender, _value);     // emit withdraw event
    }
}