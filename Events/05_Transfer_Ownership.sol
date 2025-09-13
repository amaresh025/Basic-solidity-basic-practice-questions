// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnershipTransfered {
    // Current owner ka address store karega
    address public owner;

    // Contract deploy hone par owner = deployer
    constructor() {
        owner = msg.sender;
    }

    // Event jab ownership transfer hoti hai (track karne ke liye)
    event OwnershipTransfer(address indexed oldOwner, address indexed newOwner);

    // Modifier: sirf owner hi kuch functions call kar paye
    modifier OnlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    // Ownership transfer karne ka function
    function transferOwnership(address newOwner) public OnlyOwner {
        require(newOwner != address(0), "Invalid address"); // 0x0 address na ho
        address oldOwner = owner; // purana owner store karo
        owner = newOwner;         // naye owner ko set karo
        emit OwnershipTransfer(oldOwner, newOwner); // event emit karo
    }
}
