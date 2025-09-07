// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract FindMax{
    uint[] public arr = [35, 43, 22, 32, 22, 85];

    function get_Max() public view returns (uint) {
        uint max = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        return max;
    }
}