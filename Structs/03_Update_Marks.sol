// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract UpdateMarks {
    // Define Student struct
    struct Student {
        string name;
        uint256 marks;
        uint256 id; // unique student id
    }

    // Array to store all students
    Student[] public students;

    // Function to add a new student
    function addStudents(
        string memory _name,
        uint256 _marks,
        uint256 _id
    ) public {
        students.push(Student(_name, _marks, _id));
    }

    // Function to update marks of a student by ID
    function updateMarks(uint256 _id, uint256 newMarks) public {
        for (uint256 i = 0; i < students.length; i++) {
            if (students[i].id == _id) {
                students[i].marks = newMarks; // update marks
                return; // exit once found
            }
        }
        revert("id is not found"); // if no match found
    }
}
