// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract FindMaxElement{
    uint[] public arr = [73, 53, 87, 89, 23, 33];

    function getMin() public view returns (uint) {
       uint min = arr[0];
       for (uint i = 1; i < arr.length; i++) {
        min == arr[i];
       }
       return min;
    }
}