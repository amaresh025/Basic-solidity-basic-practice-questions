// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract DotoList {

    // Define a structure for each task
    struct Task {
        string content;   // The task description
        bool completed;   // Status of the task (true = completed, false = not completed)
    }

    // Array to store all tasks
    Task[] tasks;

    // Modifier to check if a task exists at a given index
    modifier Require(uint _index) {
        require(_index < tasks.length, "Task does not exist!");
        _;
    }

    // Function to add a new task
    function addTask(string memory _content) public {
        tasks.push(Task(_content, false)); // Add with default status as 'not completed'
    }

    // Function to get all tasks
    function allTasks() public view returns (Task[] memory) {
        return tasks;
    }

    // Function to toggle (mark/unmark) a task as completed
    function toggleCompleted(uint _index) public Require(_index) { 
        tasks[_index].completed = !tasks[_index].completed;
    }

    // Function to delete a task
    // Replace the task with the last element, then remove the last
    function deleteTask(uint _index) public Require(_index) {
        tasks[_index] = tasks[tasks.length - 1];
        tasks.pop();
    }

    // Function to get the total number of tasks
    function taskCount() public view returns (uint) {
        return tasks.length;
    }
}

