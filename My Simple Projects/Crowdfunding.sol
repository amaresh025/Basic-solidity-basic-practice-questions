// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    address public owner;         // Campaign creator
    uint public target;           // Funding goal
    uint public fundingRaised;    // Total funds raised
    uint public deadline;         // Campaign deadline (timestamp)

    mapping (address => uint) public contributions;  // Track contributions per address

    // Constructor: set target and campaign duration
    constructor(uint _target, uint _durationInSeconds) {
        owner = msg.sender;                          // Set campaign owner
        target = _target;                            // Set funding target
        deadline = block.timestamp + _durationInSeconds; // Set campaign end time
    }

    // Function to contribute funds
    function contribute() public payable {
        require(msg.value > 0, "Make sure to send some ether"); // Must send some ETH
        require(block.timestamp < deadline, "Time passed");     // Only before deadline

        contributions[msg.sender] += msg.value;  // Update contributor's balance
        fundingRaised += msg.value;              // Update total funding
    }

    // Check if funding goal is reached
    function goalRaised() public view returns (bool) {
        return fundingRaised >= target;
    }

    // Owner can withdraw funds if goal reached and campaign ended
    function withdraw() public {
        require(msg.sender == owner, "You are not owner");       // Only owner
        require(block.timestamp > deadline, "Wait for end of the campaign!"); // After deadline
        require(fundingRaised >= target, "Target not reached!"); // Goal must be reached

        uint amount = address(this).balance; // Total funds in contract
        fundingRaised = 0;                   // Reset funding to prevent multiple withdrawals
        payable(owner).transfer(amount);     // Transfer funds to owner
    }

    // Contributors can get refund if goal not reached
    function refund() public {
        require(block.timestamp > deadline, "Wait for end of the campaign!"); // After deadline
        require(fundingRaised < target, "Target reached, no refund");          // Only if goal failed

        uint amount = contributions[msg.sender];   // Amount contributed by sender
        require(amount > 0, "No contributions found"); // Must have contributed

        contributions[msg.sender] = 0;             // Reset contribution (security)
        payable(msg.sender).transfer(amount);      // Refund contributor
    }
}
