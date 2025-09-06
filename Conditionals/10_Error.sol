// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple contract to demonstrate the use of Custom Errors
contract CustomErrorExample {
    // State variable to store a number
    uint public num;

    // Define a custom error (with parameter 'input')
    // This error will be thrown when the input number is <= 100
    error NotGreaterThan100(uint input);

    // Function to set the number
    function setNum(uint _num) public {
        // Check if input is less than or equal to 100
        // If true → revert with the custom error and pass the invalid input
        if (_num <= 100) {
            revert NotGreaterThan100(_num);
        }

        // If input is valid (> 100), store it in 'num'
        num = _num;
    }
}
