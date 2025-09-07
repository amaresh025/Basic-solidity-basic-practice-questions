// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Length{
    // Dynamic array of unsigned integers
    uint[] arr = [43, 53, 32, 67, 34];

    // Function to get both the length of the array and all its elements
    function get_Length_Arr() public view returns (uint, uint[] memory) {
        // Returns a tuple:
        // 1. arr.length → number of elements in the array (uint)
        // 2. arr → the entire array (uint[] memory)
        return (arr.length, arr);
    }
}
