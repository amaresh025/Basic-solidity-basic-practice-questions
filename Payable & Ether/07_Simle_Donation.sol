// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleDonation {
    // Address of the contract owner (receiver of donations)
    address public owner;

    // Mapping to track how much each sender donated
    mapping (address => uint) public balance;

    // Event to log donation details (who sent, who received, how much)
    event donarlog(address indexed sender, address indexed owner, uint amount);

    // Constructor sets the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Function to donate Ether to the owner
    function donate() public payable {
        require(msg.value > 0, "Must send some ether");

        // Record donation amount for the sender
        balance[msg.sender] += msg.value;

        // Emit event with details of this donation
        emit donarlog(msg.sender, owner, msg.value);

        // Transfer the Ether directly to the owner
        payable(owner).transfer(msg.value);
    }
}
