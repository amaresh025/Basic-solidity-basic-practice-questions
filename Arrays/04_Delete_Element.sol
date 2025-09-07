// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DeleteElement {
    uint[] public arr = [1, 3, 4, 5, 8];

    // Method 1: sirf index par value ko 0 karna (array size same rahega)
    function delete_Element(uint index) public {
        require(index < arr.length, "index is out of range");
        delete arr[index];     
        // Example: [1,3,4,5,8] → delete_Element(1) → [1,0,4,5,8]
    }

    // Method 2: array ka last element hatana (size 1 kam ho jayega)
    function delete_Element2(uint index) public {
        require(index < arr.length, "index is out of range");
        arr.pop();  
        // Index parameter ka use nahi ho raha hai yaha,
        // chahe index 2 do ya 4, ye hamesha last element hi hata dega.
        // Example: [1,3,4,5,8] → delete_Element2(0) → [1,3,4,5]
    }
}
