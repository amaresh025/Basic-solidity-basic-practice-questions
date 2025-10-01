// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract RetriveById {
    // Define a struct "Student"
    // Each student will have: name, marks, and a unique ID
    struct Student {
        string name;
        uint256 marks;
        uint256 id; // unique student id
    }

    // Dynamic array to store multiple students
    Student[] public students;

    // Function to add a new student into the array
    // Takes name, marks, and id as input
    function addStudents(string memory _name, uint256 _marks, uint256 _id) public {
        students.push(Student(_name, _marks, _id));
    }

    // Function to retrive student details by their ID
    // Loops through all students and returns the details if ID matches
    function retrive(uint256 _id) public view returns (string memory, uint, uint) {
        for (uint i = 0; i < students.length; i++) {
            if (students[i].id == _id) {
                return (students[i].name, students[i].marks, students[i].id);
            }
        }
        // If no student found with given ID, revert the transaction
        revert("Id didn't found");
    }
}

