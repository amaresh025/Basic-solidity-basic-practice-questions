// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract School {
    // Structure to store student details
    struct Student {
        string name;
        uint id;
    }

    // Mapping to find student quickly using id
    mapping (uint => Student) public FindStudent;

    // Array to store list of all students
    Student[] students;

    // Event to log when a new student is added
    event StudentAdded(uint indexed _id, string _name);

    // Function to add new student
    function addStudent(string memory _name, uint _id) public {
        Student memory newStudent = Student(_name, _id); // create student
        students.push(newStudent);                       // add to array
        FindStudent[_id] = newStudent;                   // add to mapping
        emit StudentAdded(_id, _name);                   // emit event
    }

    // Function to return all students
    function getAllStudents() public view returns (Student[] memory) {
        return students;
    }
}
