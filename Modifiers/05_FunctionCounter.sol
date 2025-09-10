// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract FunctionCounter {
    uint public counter; // ye batayega function kitni baar call hua

    // Modifier jo function ke call hone se pehle counter ko badha de
    modifier countCalls() {
        counter++; // 1 se badha do
        _;        // fir function execute ho
    }

    // Function jo modifier use kar raha hai
    function doSomething() public countCalls {
        // yaha function ka kaam hoga
    }
}
