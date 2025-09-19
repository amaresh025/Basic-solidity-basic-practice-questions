// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    address private owner;        // Contract owner
    address public highestBidder; // Current highest bidder
    uint public highestBid;       // Highest bid amount
    bool public endAuction;       // Auction status

    constructor() {
        owner = msg.sender; // Set owner
    }

    // Place a bid
    function bid() public payable {
        require(!endAuction, "Auction ended");
        require(msg.value > highestBid, "Low bid");

        // Refund previous bidder
        if(highestBidder != address(0)) {
            payable(highestBidder).transfer(highestBid);
        }

        highestBid = msg.value;      // Update bid
        highestBidder = msg.sender;  // Update bidder
    }

    // End auction
    function auctionEnd() public {
        require(msg.sender == owner, "Not owner");
        require(!endAuction, "Already ended");

        payable(owner).transfer(highestBid); // Send funds to owner
        endAuction = true; // Mark ended
    }
}
