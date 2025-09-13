// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbacFuctions {
    
    // Mapping to store balances of each user
    mapping (address => uint) public balances;

    // Deposit Ether into the contract using this function
    function deposit() public payable {
        // Increase sender's balance by the amount of Ether sent
        balances[msg.sender] += msg.value;
    }
    
    // Fallback function: called when an unknown function is invoked 
    // or when Ether is sent with data that doesn't match any function
    fallback() external payable { 
        revert("Function didn't exist!"); // Reject such transactions
    }

    // Receive function: called when contract receives plain Ether (without data)
    receive() external payable {
        // Increase sender's balance by the amount of Ether received
        balances[msg.sender] += msg.value;
    }
}
