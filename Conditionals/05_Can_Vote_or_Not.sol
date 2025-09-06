// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to check voting eligibility based on age
contract VoteEligibility {

    // Function to determine if a person can vote
    // Input: age (unsigned integer)
    // Output: Returns "Can Vote" if age >= 18, otherwise "Cannot Vote"
    function enter_Age(uint age) public pure returns (string memory) {
        if(age >= 18) {
            // If age is 18 or above, eligible to vote
            return "Can Vote";
        } else {
            // If age is less than 18, not eligible to vote
            return "Cannot Vote";
        }
    }
}
