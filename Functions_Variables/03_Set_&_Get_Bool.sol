// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SetgetBool {
    
    bool public myBool;
    // State variable 'myBool' of type bool (true/false)
    // 'public' keyword generates a free getter function automatically

    function setBool() public {
        // Public function to toggle the value of 'myBool'
        // Each time this function is called, it switches the value
        
        myBool = !myBool;
        // '!' is the NOT operator
        // If myBool = false → it becomes true
        // If myBool = true → it becomes false
    }
}
