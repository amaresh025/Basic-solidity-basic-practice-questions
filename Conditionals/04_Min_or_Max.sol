// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinorMax {
    uint num1;
    uint num2;
    uint num3;

    // Function to set 3 numbers
    function numbers(uint _num1, uint _num2, uint _num3) public {
        num1 = _num1;
        num2 = _num2;
        num3 = _num3;
    }

    // Function to find maximum of 3 numbers
    function findMax() public view returns (uint) {
        uint max = num1; // assume num1 is max initially

        if (num2 > max) {
            max = num2; // update if num2 is bigger
        }
        if (num3 > max) {
            max = num3; // update if num3 is bigger
        }

        return max;
    }

    // Function to find minimum of 3 numbers
    function findMin() public view returns (uint) {
        uint min = num1; // assume num1 is min initially

        if (num2 < min) {
            min = num2; // update if num2 is smaller
        }
        if (num3 < min) {
            min = num3; // update if num3 is smaller
        }

        return min;
    }
}
