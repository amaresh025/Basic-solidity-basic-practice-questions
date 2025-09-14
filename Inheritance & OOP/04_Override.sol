// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base contract A
contract A {
    string public name;

    // Function marked as virtual so it can be overridden in child
    function setName(string memory _name) public virtual {
        name = _name;
    }
}

// Contract B inherits from A
contract B is A {
    string public newName;

    // Overriding A's setName function
    // Marked as virtual again so it can be overridden further
    function setName(string memory _newName) public virtual override {
        newName = _newName;
    }
}

// Contract C inherits from B
contract C is B {
    string public thirdName;

    // Overriding B's setName function
    function setName(string memory _thirdName) public override {
        thirdName = _thirdName;
    }
}

