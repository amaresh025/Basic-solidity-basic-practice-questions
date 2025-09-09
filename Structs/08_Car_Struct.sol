// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract CarStruct {

    // Define a struct "Car"
    // Each car will have:
    // - name  : car brand/company name
    // - model : car model
    // - year  : manufacturing year
    struct Car {
        string name;
        string model;
        uint year;
    }

    // Dynamic array to store multiple cars
    Car[] public cars;

    // Function to add a new car into the array
    // Takes car name, model, and year as input
    function addCar(string memory _name, string memory _model, uint _year) public {
        // Create new Car struct and push it into the array
        cars.push(Car(_name, _model, _year));
    }
}
