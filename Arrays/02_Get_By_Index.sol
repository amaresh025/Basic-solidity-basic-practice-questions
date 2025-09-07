// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GetbyIndex {
    // Fixed array initialized with values
    uint[] arr = [1, 3, 4, 5, 8];

    // Function to get element by index
    // 'enter_index' is the position in the array
    // Example: if enter_index = 0 → returns 1
    // Example: if enter_index = 3 → returns 5
    function getElement(uint enter_index) public view returns (uint) {
        return arr[enter_index];
    }
}
