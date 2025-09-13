// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TrackDepositWithEvent {
    // Mapping to store balances of each user
    mapping (address => uint) public Balance;

    // Event to track deposits (who deposited and how much)
    event TrackDeposit(address indexed user, uint amount);

    // Deposit Ether into the contract
    function deposit() public payable {
        // Update sender's balance
        Balance[msg.sender] += msg.value;

        // Emit event to record this deposit
        emit TrackDeposit(msg.sender, msg.value);
    }
}
