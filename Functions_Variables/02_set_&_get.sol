// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract declaration with name 'SetandGet'
contract SetandGet {
    
    string name;
    // State variable 'name' of type string
    // Stored on the blockchain

    function setName(string memory _name) public {
        // Public function to set/update the 'name'
        // 'memory' is used because _name is a temporary variable (not stored on blockchain)

        name = _name;
        // Updates the state variable 'name' with input '_name'
    }

    function getName() public view returns (string memory) {
        // Public view function to read the value of 'name'
        // 'view' means it does not modify the state
        // Returns a string stored in memory

        return name;
        // Returns the current value of 'name'
    }
}
