// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract MarksUpdate {
    uint public marks;

    // Event for marks update
    event MarksUpdated(uint oldMarks, uint newMarks);

    // Function to update marks
    function updateMarks(uint _marks) public {
        uint old = marks;          // purane marks store karo
        marks = _marks;            // naye marks set karo
        emit MarksUpdated(old, _marks); // event emit karo
    }
}

