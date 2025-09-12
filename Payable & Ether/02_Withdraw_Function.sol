// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Deposit {
   
    // Store balance of each user (address -> balance)
    mapping(address => uint) public balances;

    // Function to deposit ether into contract
    function deposit() public payable {
        balances[msg.sender] += msg.value; // increase sender balance
    }

    // Function to withdraw ether from contract
    function withdraw(uint _value) public {
        require(balances[msg.sender] >= _value, "Not enough Balance"); // check balance
        balances[msg.sender] -= _value; // decrease sender balance

        payable(msg.sender).transfer(_value); // send ether back
    }
}
