// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract EmployeeSystem {
    // Define a struct "Employee"
    // Each employee will have:
    // - name  : Employee's name (string)
    // - id    : Employee's unique identifier (string, could be employee ID)
    // - salary: Employee's salary (unsigned integer)
    struct Employee {
        string name;
        string id;
        uint salary;
    } 
}
