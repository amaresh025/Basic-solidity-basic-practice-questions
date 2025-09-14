// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Abstract contract (cannot be deployed directly)
abstract contract Human {
    // Abstract function (no implementation here)
    function getMassage() public view virtual returns (string memory);
}

// Child contract implementing Human
contract Man is Human {
    // Must override the abstract function
    function getMassage() public pure override returns (string memory) {
        return "I am a Man";
    }
}
