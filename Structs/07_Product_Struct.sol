// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Store {

    // Define a struct "Product"
    // Each product will have:
    // - name  : product's name
    // - id    : unique product identifier
    // - price : product's price
    struct Product {
        string name;
        uint id;
        uint price;
    }

    // Dynamic array to store all products
    Product[] public products;

    // Function to add a new product
    // Takes product's name, id, and price as input
    function addProduct(string memory _name, uint _id, uint _price) public {
        products.push(Product(_name, _id, _price));
    }

    // Function to retrieve product details by ID
    // Loops through the products array and returns product info if found
    function retrive(uint _id) public view returns (string memory, uint, uint) {
        for (uint i = 0; i < products.length; i++) {
            if (products[i].id == _id) {
                return (products[i].name, products[i].id, products[i].price);
            }
        }
        // If no product found with the given ID, revert the transaction
        revert("id didn't found");
    }
}
