// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract AddStudents {

    // Define a struct "Student"
    // Each student will have a name and a roll number
    struct Student {
        string name;
        uint rollNo;
    }

    // Dynamic array to store multiple students
    Student[] public students;

    // Function to add a new student into the array
    // Takes student's name and roll number as input
    function addStudents(string memory _name, uint _rollNo) public {
        // Create a new Student struct and push it into the array
        students.push(Student(_name, _rollNo));
    }
}
