// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract NameandMarks {
    // Mapping to store student name → marks
    mapping(string => uint) public student;

    // Function to set or update marks for a student
    // Input: name (student's name), marks (0–100)
    function setMarks(string memory name, uint marks) public returns (uint) {
        require(marks <= 100, "Marks is out of range");
        student[name] = marks;  // store marks for given student name
        return marks;           // return the stored marks
    }
}
