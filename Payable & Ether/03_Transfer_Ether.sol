// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransferEther {
    // Mapping to store balances of each user
    mapping (address => uint) public balances;

    // Event to log transfers (who sent to whom and how much)
    event TransferEth(address indexed from, address indexed to, uint value);

    // Deposit Ether into the contract
    function deposit() public payable {
        balances[msg.sender] += msg.value; // Add deposited value to sender's balance
    }

    // Transfer Ether from sender to another address
    function transfer(address _to, uint _value) public {
        require(balances[msg.sender] >= _value, "Not Enough Balance"); // Ensure enough balance
        require(_to != address(0), "Invalid Address"); // Prevent zero address transfers

        balances[msg.sender] -= _value; // Deduct from sender
        balances[_to] += _value;        // Add to receiver

        emit TransferEth(msg.sender, _to, _value); // Emit transfer event

        payable(_to).transfer(_value); // Transfer Ether to receiver
    }
}
