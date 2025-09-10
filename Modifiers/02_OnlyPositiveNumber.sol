// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract PositiveNumber {
    uint public num;

    // Modifier with parameter `_num`
    // Condition: _num must be greater than 0
    modifier OnlyPositiveNumber(uint _num) {
        require(_num > 0, "Not Positive Number");
        _;
    }

    // Function uses the modifier
    // It will only execute if _num > 0
    function setPositiveNumber(uint _num) public OnlyPositiveNumber(_num) {
        num = _num;
    }
}
