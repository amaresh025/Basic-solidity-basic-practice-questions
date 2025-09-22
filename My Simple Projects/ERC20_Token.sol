// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Simple ERC20 Token Contract
contract ERC20Token {
    string public name;          // Name of the token
    string public symbol;        // Token symbol (like "ERC20")
    uint8 public decimals;       // Number of decimals (1 token = 10^decimals units)
    uint private _totalSupply;   // Total supply of the token

    address owner;               // Owner / deployer of the contract

    // Mapping to store balances of each address
    mapping(address => uint) Balances;

    // Event to emit whenever tokens are transferred
    event Transfer(address owner, address to, uint tokens);

    // Constructor: executes once during contract deployment
    constructor() {
        owner = msg.sender;             // Deployer becomes the owner
        name = "TokenERC20";            // Set token name
        symbol = "ERC20";               // Set token symbol
        decimals = 18;                  // Standard 18 decimals
        _totalSupply = 1000000000 * 10**18; // Total supply: 1 billion tokens

        // Assign all tokens to the deployer
        Balances[msg.sender] = _totalSupply;

        // Emit Transfer event from "0 address" to owner (initial mint)
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    // Function to check total supply of the token
    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }

    // Function to check the balance of any account
    function balanceof(address account) public view returns (uint Token) {
        return Balances[account];
    }

    // Function to transfer tokens from sender to another address
    function transfer(address to, uint amount) public returns (bool) {
        require(Balances[msg.sender] >= amount, "You have insufficient Balance!"); // Check sender's balance

        // Subtract the amount from sender
        Balances[msg.sender] -= amount;

        // Add the amount to the recipient
        Balances[to] += amount;

        // Emit Transfer event
        emit Transfer(msg.sender, to, amount);

        return true; // Transfer successful
    }
}
