// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoginBoolCheck {
    // State variable to store the password
    string password;

    // Function to set the password
    // Takes a string input and stores it in the state variable "password"
    function setPassword(string memory _password) public {
        password = _password;
    }

    // Function to check if the entered password matches the stored one
    // Compares the keccak256 hash of the input with the stored password hash
    // Returns true if they match, false otherwise
    function checkPassword(string memory _input) public view returns (bool) {
        return
            keccak256(abi.encodePacked(_input)) == keccak256(abi.encodePacked(password));
    }
}
