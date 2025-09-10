// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract StudentAccess {
    address student;

    // Register student
    function registerStudent(address _student) public {
        student = _student;
    }

    // Modifier
    modifier OnlyStudent {
        require(msg.sender == student, "Student is not Registered");
        _;
    }

    // Function only for student
    function studentTask() public view OnlyStudent returns (string memory) {
        return " This function can only be performed by the student!";
    }
}

