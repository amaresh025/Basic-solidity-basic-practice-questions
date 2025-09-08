// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SimpleStruct {

    // Define a struct called Student
    // It will store name, marks, and id of each student
    struct Student {
        string name;
        uint marks;
        uint id;
    }

    // Dynamic array of Student structs
    Student[] public students;

    // Function to add a new student into the array
    function addStudent(string memory _name, uint _marks, uint _id) public {
        // Push a new Student struct into the students array
        students.push(Student(_name, _marks, _id));
    }

    // Function to get student details by ID
    // Returns name, marks, and id if found, otherwise reverts
    function getStudent(uint _id) public view returns (string memory, uint, uint) {
        // Loop through all students in the array
        for (uint i = 0; i < students.length; i++) {
            // If the student's id matches the given _id
            if (students[i].id == _id) {
                // Return the student's details
                return (students[i].name, students[i].marks, students[i].id);
            }
        }
        // If no student with the given id is found, throw an error
        revert("ID not found");
    }
}
