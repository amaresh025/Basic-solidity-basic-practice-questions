// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract FindElement {
    // Predefined array of unsigned integers
    uint[] arr = [2, 4, 5, 88, 23, 24];

    // Function to find the index of a given element in the array
    // Input: element (the value to search for)
    // Output: index of the element (as int), or -1 if not found
    function find_Element(uint element) public view returns (int) {
        // Loop through the entire array
        for (uint i = 0; i < arr.length; i++) {
            // Check if the current element matches the input
            if (arr[i] == element) {
                // (Optional) element = arr[i]; <- not required since both are same
                // Return the index where element is found
                return int(i); 
            }
        }
        // If no match is found, return -1
        return -1;
    }
}
