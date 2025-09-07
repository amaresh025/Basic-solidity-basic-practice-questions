// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UpdateArr {
    // Array declared (default internal visibility, not public)
    uint[] arr = [2, 4, 5, 3, 5, 34, 43];

    // Function to update array element at a given index
    function updateArr(uint index, uint newValue) public {
        // Ensure the index is within array bounds
        require(index < arr.length, "index out of range");
        // Update the element at the specified index
        arr[index] = newValue;
    }

    // Function to fetch an element by index
    // Since 'arr' is not public, we create a manual getter
    function getArr(uint index) public view returns (uint) {
        return arr[index];
    }
}
