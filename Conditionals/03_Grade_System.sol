// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to implement a simple grading system based on marks
contract GradeSystem {
    
    // Function to return grade as per given marks
    // Input: marks (0 - 100 ideally)
    // Output: Corresponding grade in string format
    function grade(uint256 marks) public pure returns (string memory) {
        if (marks >= 90) {
            // Marks between 90 - 100
            return "A+";
        } else if (marks >= 80) {
            // Marks between 80 - 89
            return "A";
        } else if (marks >= 70) {
            // Marks between 70 - 79
            return "B+";
        } else if (marks >= 60) {
            // Marks between 60 - 69
            return "B";
        } else if (marks >= 50) {
            // Marks between 50 - 59
            return "C+";
        } else if (marks >= 40) {
            // Marks between 40 - 49
            return "C";
        } else if (marks >= 33) {
            // Marks between 33 - 39
            return "Pass";
        } else {
            // Marks less than 33
            return "Fail";
        }
    }
}

