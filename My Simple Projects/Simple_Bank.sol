// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SimpleBank {
    // Store balance of each user
    mapping (address => uint) public Balances;

    // Modifier to check balance before withdraw or transfer
    modifier Require(uint _value) {
        require(Balances[msg.sender] >= _value, "balance not enough");
        _;
    }

    // Deposit Ether into bank
    function deposit() public payable {
        Balances[msg.sender] += msg.value;
    }

    // Withdraw Ether from bank
    function withdraw(uint _value) public Require(_value) {
        Balances[msg.sender] -= _value;
        payable(msg.sender).transfer(_value);
    }

    // Transfer Ether balance to another user
    function transfer(address _to, uint _value) public Require(_value) {
        require(_to != address(0), "Invalid address"); // avoid sending to zero address
        Balances[msg.sender] -= _value;
        Balances[_to] += _value;
    }
}
