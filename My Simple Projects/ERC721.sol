// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ERC721 {
    string public name;
    string public symbol;
    uint private nextTokenId = 1;

    mapping(uint => address) public _owners;
    mapping(address => uint) public _balances;

    event Transfer(
        address indexed from,
        address indexed to,
        uint indexed tokenId
    );

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function mint(address to) public {
        uint tokenId = nextTokenId;
        nextTokenId++;

        _owners[tokenId] = to;
        _balances[to] += 1;

        emit Transfer(address(0), to, tokenId);
    }

    function balanceOf(address owner) public view returns (uint) {
        return _balances[owner];
    }
    function ownerOf(uint _tokenId) public view returns (address) {
        address owner = _owners[_tokenId];
        require(owner != address(0), "owner Invalid!");

        return owner;
    }
    function transfer(address _from, address _to, uint _tokenId) public {
        require(ownerOf(_tokenId) == _from, "Token doesn't exist!");
        require(_to != address(0), "Invalid receiver address!");
        require(msg.sender == _from, "Not authorized to transfer!");


        _balances[_from] -= 1;
        _balances[_to] += 1;
        _owners[_tokenId] = _to;
        emit Transfer(_from, _to, _tokenId);
    }
}
