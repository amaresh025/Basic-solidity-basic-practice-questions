// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PasswordCheck {
    string private password; // stored password

    // Set the password
    function setPassword(string memory _password) public {
        password = _password;
    }

    // Check if entered password matches the stored password
    function checkPassword(string memory _input) public view returns (string memory) {
        // Compare both strings using keccak256 hash
        require(
            keccak256(abi.encodePacked(_input)) == keccak256(abi.encodePacked(password)),
            "Error: Wrong Password!"
        );

        // If correct
        return "Access Granted";
    }
}
