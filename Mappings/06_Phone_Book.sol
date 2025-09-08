// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract MyPhoneBook {
    // Mapping to store contacts: name -> phone number
    mapping(string => string) public phoneNumbers;

    // Add or update a contact
    function setPhoneNum(string memory name, string memory phone) public {
        phoneNumbers[name] = phone;
    }

    // Delete a contact by name
    function deleteContact(string memory name) public {
        delete phoneNumbers[name];
    }
}
