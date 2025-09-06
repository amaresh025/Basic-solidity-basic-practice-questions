// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to check whether a given number is positive or negative
contract CheckWeather {

    // Function to check a number
    // Input: int num (can be positive, negative, or zero)
    // Output: "Positive" if num >= 1, "Negative" if num < 0
    // Note: If num == 0, the function will revert with an error
    function numbers(int num) public pure returns (string memory) {
        // Ensure the number is not zero, otherwise revert
        require(num != 0, "cannot check");

        if(num >= 1) {
            // If number is greater than or equal to 1, return "Positive"
            return "Positive";
        } else {
            // If number is less than 0, return "Negative"
            return "Negative";
        }
    }
}
