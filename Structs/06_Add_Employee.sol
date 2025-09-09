// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract EmployeeSystem {
   
    struct Employee {
        string name;
        string id;
        uint salary;
    } 
    Employee[] public employees;
    function addEmployee(string memory _name, string memory _id, uint _salary)  public {
        employees.push(Employee(_name, _id, _salary));

    }
}