// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract FindSum{
    uint[] public arr = [33, 43, 34, 53, 34];
    function get_Sum() public view  returns (uint) {
        uint sum = 0;
        for (uint i = 1; i < arr.length; i++) {
            sum += arr[i];
        }
        return sum;
    }
}