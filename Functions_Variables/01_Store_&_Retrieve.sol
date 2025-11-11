// SPDX-License-Identifier: MIT
// License identifier, standard practice in Solidity files

pragma solidity ^0.8.0;
// Solidity version declaration, ensures code compatibility

contract functionView {
    // Contract declaration with name 'functionView'

    uint num;
    // State variable 'num' of type uint (unsigned integer)
    // Stored on the blockchain

    function store(uint _num) public {
        // Public function to store a value in 'num'
        // Anyone can call this function

        num = _num;
        // Update state variable 'num' with input value '_num'
    }

    function retrive() public view returns (uint) {
        // Public 'view' function to read the value of 'num'
        // 'view' means it does not modify the state
        // Returns an unsigned integer

        return num;
        // Returns the current value of 'num'
    }
}
