// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Parent contract
contract Parent {
    // Function marked as virtual so it can be overridden in child
    function getMassage() public pure virtual returns (string memory) {
        return "I am Parent";
    }
}

// Child contract inheriting from Parent
contract Child is Parent {
    // Overriding Parent function using override keyword
    function getMassage() public pure override returns (string memory) {
        return "I am Child";
    }
}

