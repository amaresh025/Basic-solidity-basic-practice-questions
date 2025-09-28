// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery { 
    address public owner;          // contract owner
    uint public ticketPrice;       // price of one ticket
    uint public deadline;          // lottery deadline

    address[] private players;     // list of all players

    constructor(uint _ticketPrice, uint _durationInSenconds) {
        owner = msg.sender;                        // deployer is owner
        ticketPrice = _ticketPrice;                // set ticket price
        deadline = block.timestamp + _durationInSenconds; // set deadline
    }

    event trackLottery(address indexed player, uint amount); // track entry

    function enter() public payable {
        require(msg.value == ticketPrice, "Incorrect ticket price"); // must pay exact price
        require(block.timestamp < deadline, "Lottery Ended!");       // must be before deadline

        players.push(msg.sender);                    // add player
        emit trackLottery(msg.sender, ticketPrice);  // emit event
    }

    function pickWinner() public {
        require(block.timestamp >= deadline, "Lottery not ended!"); // only after deadline
        require(msg.sender == owner, "You are not owner");          // only owner
        require(players.length > 0, "at least 1 player");                                // at least 1 player

        // random index calculation
        uint index = uint(
            keccak256(
                abi.encodePacked(block.timestamp, block.prevrandao, players.length)
            )
        ) % players.length; 

        address winner = players[index];             // pick winner
        payable(winner).transfer(address(this).balance); // transfer funds

        delete players;  // reset players for next round
    }

    function getPlayers() public view returns (address[] memory) {
        return players;  // get all players
    } 
}


