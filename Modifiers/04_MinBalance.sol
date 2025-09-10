// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Balance {
    uint balance; // store balance

    // check if balance > 4
    modifier minBalance(uint _balance) {
        require(_balance >= 10, "Not Enough");
        _;
    }

    // set balance with condition
    function setBalanc(uint _balance) public minBalance(_balance) {
        balance = _balance;
    }

    // get balance
    function getBalance() public view returns (uint) {
        return balance;
    }
}
