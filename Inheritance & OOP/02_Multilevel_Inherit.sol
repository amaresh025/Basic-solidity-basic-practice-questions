// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Grandfather contract
contract Grandfather {
    string public grandFather;

    // Function to set grandfather's name
    function setGrandFather(string memory _grandFather) public {
        grandFather = _grandFather;
    }
}

// Parent contract inheriting Grandfather
contract Parent is Grandfather {
    string public fatherName;

    // Function to set father's name
    function setFatherName(string memory _fatherName) public {
        fatherName = _fatherName;
    }
}

// Child contract inheriting Parent (and indirectly Grandfather too)
contract Child is Parent {
    string public sonName;

    // Function to set son's name
    function setSonName(string memory _sonName) public {
        sonName = _sonName;
    }
}

