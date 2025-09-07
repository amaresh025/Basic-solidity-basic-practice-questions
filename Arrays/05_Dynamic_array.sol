// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArr{
    // Dynamic array of unsigned integers
    uint[] public arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    // Function to remove the last element of the array
    // Returns the updated array after removing the last element
    function dynamicPop() public returns (uint[] memory) {
        require(arr.length > 0, "Array is empty"); // Ensure array is not empty
        arr.pop();  // Removes the last element
        return arr; // Return remaining array
    }

    // Function to add a new element to the end of the array
    // Returns the updated array after adding the new element
    function dynamicPush(uint i) public returns (uint[] memory) {
        arr.push(i); // Adds new element at the end
        return arr;  // Return updated array
    }
}

