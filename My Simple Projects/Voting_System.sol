// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple Voting System contract
contract VotingSystem {
    // Track if an address has already voted
    mapping(address => bool) public hasVoted;

    // Store total votes received by each candidate
    mapping(string => uint256) public votesRecieved;

    // Track if an address is registered as a voter
    mapping(address => bool) public isRagistered;

    // List of all candidates
    string[] private candidate;

    // List of all registered voters
    address[] private voterlist;

    // Contract owner (the deployer)
    address private owner;

    // Constructor: sets the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to allow only owner to call certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Function to register voters (only owner can call)
    function ragisterVoters(address _addr) public onlyOwner {
        voterlist.push(_addr);
        isRagistered[_addr] = true;
    }

    // Function to add candidates (only owner can call)
    function addCandidates(string memory _candidate) public onlyOwner {
        candidate.push(_candidate);
    }

    // Get list of all candidates
    function getAllCandidates() public view returns (string[] memory) {
        return candidate;
    }

    // Get list of all registered voters
    function getAllVoters() public view returns (address[] memory) {
        return voterlist;
    }

    // Function to cast vote
    function vote(string memory _candidate) public {
        require(hasVoted[msg.sender] == false, "You are already voted"); // Prevent double voting
        require(isRagistered[msg.sender] == true, "You are not registered in voter list"); // Only registered voters can vote

        votesRecieved[_candidate] += 1; // Increase candidate vote count
        hasVoted[msg.sender] = true;    // Mark voter as voted
    }
}

// Small help from ChatGPT :)
