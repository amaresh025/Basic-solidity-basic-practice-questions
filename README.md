Basic Solidity Practice Questions

My journey of learning Solidity step by step through practice contracts covering variables, arrays, mappings, structs, events, modifiers, and more.


1. Variables & Functions (10 Questions)

Write a Solidity function to store and retrieve an unsigned integer (uint).

Write two functions setName(string memory _name) and getName() to update and retrieve a string variable.

Create a boolean variable with a setter and getter function.

Implement functions to increment and decrement a counter.

Write a function to multiply two numbers and return the result.

Write a function to divide two numbers with a require statement to avoid division by zero.

Write a function to calculate the modulo of two numbers.

Write a function that compares two numbers and returns the bigger one.

Write a function to concatenate two strings.

Write a function to calculate the square and cube of a number.

2. Conditionals (if/else, require, assert) (10 Questions)

Write a function to check if a number is even or odd.

Write a function to check if a number is positive or negative.

Implement a grade system: given marks, return grade (A/B/C/D/F).

Write a function to find the minimum or maximum of three numbers.

Write a function to check voting eligibility (age ≥ 18).

Write a function to check a password by matching strings.

Implement a simple login system using a boolean variable.

Write an example using require to ensure a number is greater than 100.

Write an example using assert to ensure a number is not zero.

Write a function to throw a custom error under certain conditions.

3. Arrays (10 Questions)

Create an array and store numbers in it.

Write a function to get an element by its index.

Write a function to update an element at a specific index.

Write a function to delete an element from the array.

Use push and pop to add and remove elements dynamically.

Write a function to find the length of the array.

Write a function to calculate the sum of all elements in the array.

Write a function to find the maximum element in the array.

Write a function to find the minimum element in the array.

Write a function to search for a specific element in the array.

4. Mappings (10 Questions)

Create a mapping from address to uint to store balances.

Create a mapping from string to uint (name → marks).

Write functions to add and update mapping values.

Write a function to delete a mapping entry.

Write a function to check if a key exists in a mapping (return boolean).

Create a simple phone book using mapping.

Create a nested mapping: address → (string → uint).

Write a function to count votes using mapping.

Create a whitelist mapping (true / false).

Create a blacklist mapping.

5. Structs (10 Questions)

Define a Student struct with fields id, name, and marks.

Write a function to add multiple students into an array.

Write a function to update student marks.

Write a function to retrieve a student by ID.

Define an Employee struct with fields id, name, and salary.

Write functions to add and update employee data.

Define a Product struct with fields id, name, and price.

Write functions to add and update product details.

Define a Car struct with fields brand, model, and year.

Write a function to store multiple cars in an array.

6. Modifiers (5 Questions)

Write an OnlyOwner modifier.

Write an OnlyPositiveNumber modifier.

Write an OnlyStudent modifier.

Write a MinBalance modifier.

Write a FunctionCounter modifier.

7. Events (5 Questions)

Emit an event whenever Ether is deposited.

Emit an event whenever Ether is withdrawn.

Emit an event whenever a student is added.

Emit an event whenever a student’s marks are updated.

Emit an event whenever ownership is transferred.

8. Payable & Ether (10 Questions)

Write a deposit function to accept Ether.

Write a withdraw function to send Ether.

Write a function to check contract balance.

Write a function to transfer Ether to another address.

Implement a fallback function example.

Implement a receive function example.

Track deposits using events.

Limit deposit amount using require (< 1 ETH).

Write a simple donation contract.

Write a withdraw function restricted to the owner.

9. Inheritance & OOP (10 Questions)

Create a Parent → Child contract and inherit a simple function.

Create a multilevel inheritance (Grandparent → Parent → Child).

Demonstrate function overriding.

Provide an example using virtual and override.

Implement an abstract contract.

Implement an interface example.

Demonstrate multiple inheritance.

Call a parent function from a child contract.

Write a base contract with constructor.

Use the super keyword in a derived contract.

10. Mini Projects (20 Questions)

Create a Simple Calculator contract.

Create a Simple Bank contract (multi-user).

Create a Voting System contract.

Create a To-Do List contract.

Create a Basic Auction (highest bidder wins).

Create a Basic Crowdfunding contract (target-based).

Create a Lottery contract (pick winner randomly using block data).

Create a simplified ERC20 Token contract.

Create a simplified ERC721 NFT contract.

Create a Certificate Generator (store document hash).

Create an Exam System (students attempt and store marks).

Create a Library Management contract (issue/return books).

Create an Attendance System contract.

Create an Expense Tracker contract.

Create an E-commerce contract (add products and buy).

Create a Simple Chat Log contract (store messages).

Create an Ownership Transfer System contract.

Create a Land Registry contract (store land information).

Create a Multi-sig Wallet contract (basic approval).

Create an Escrow Contract.
