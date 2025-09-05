// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to demonstrate string concatenation
contract ConcatenateStr {

    // Function to concatenate two input strings
    // Parameters: str1 and str2 (both stored in memory)
    // 'pure' because it does not read or modify blockchain state
    function concatnate(string memory str1, string memory str2) public pure returns (string memory) {
        // abi.encodePacked() is used to pack both strings together
        // Then converted back to 'string' type
        return string(abi.encodePacked(str1, str2));
    }
}