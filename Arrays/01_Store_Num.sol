// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StoreNum {
    // Declare a dynamic array to store unsigned integers
    uint[] public arr;

    // Function to store numbers inside the array
    function store(uint num) public {
        // Push the given number into the array
        arr.push(num);
    }

    // Since 'arr' is public, Solidity automatically creates a getter function
    // Example: arr(0) will return the first element in the array
}
