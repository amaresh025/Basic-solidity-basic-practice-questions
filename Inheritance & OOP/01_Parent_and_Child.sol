// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Parent contract
contract A {
    // State variable to store name
    string public name;

    // Function to set the name
    function setName(string memory _name) public {
        name = _name;
    }
}

// Child contract inheriting from A
contract B is A {
    // B automatically gets 'name' variable and 'setName' function from A
    // No need to redefine them here
}
