// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IncrementDecrement {
    
    // State variable to store a number
    // 'public' automatically creates a getter function for 'num'
    uint public num;

    // Function to set the value of 'num'
    // Takes an input '_num' and assigns it to 'num'
    function showNum(uint _num) public {
        num = _num;
    }

    // Function to return 'num + 1'
    // Marked as 'view' because it only reads from the blockchain, no state changes
    function increment() public view returns (uint) {
        return num + 1;
    }

    // Function to return 'num - 1'
    // Marked as 'view' because it only reads from the blockchain, no state changes
    // If 'num = 0', this will revert (underflow) in Solidity ^0.8 or higher
    function decrement() public view returns (uint) {
        return num - 1;
    }
}

