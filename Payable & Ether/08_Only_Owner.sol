// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlyOwnercontracct {
    // Store the owner address (only deployer is owner)
    address public onlyOwner;

    // Set contract deployer as the owner
    constructor() {
        onlyOwner = msg.sender;
    }

    // Events to log deposits and withdrawals
    event depositHistory(address indexed from, address indexed onlyOwner, uint amount);
    event withdrawHistory(address indexed to, uint amount);

    // Mapping to keep track of how much each user deposited
    mapping (address => uint) public balances;

    // Modifier to make sure some Ether is sent
    modifier Require {
        require(msg.value > 0, "Must have to send some ether");
        _;
    }

    // Modifier to restrict access only to owner
    modifier OnlyOwnerModifier {
        require(msg.sender == onlyOwner, "Not the owner");
        _;
    }

    // Deposit Ether into the contract
    function deposit() public payable Require {
        // Update sender's balance record
        balances[msg.sender] += msg.value;

        // Emit deposit event
        emit depositHistory(msg.sender, onlyOwner, msg.value);
    }

    // Withdraw Ether from contract (only owner can use this)
    function withdraw(address _to, uint _value) public OnlyOwnerModifier {
        require(address(this).balance >= _value, "Not enough balance in contract");
        require(_to != address(0), "Invalid address");
        require(_value > 0, "Amount must be greater than zero");

        // Emit withdraw event
        emit withdrawHistory(_to, _value);

        // Transfer Ether to given address
        payable(_to).transfer(_value);
    }

    // Check total Ether in the contract
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
