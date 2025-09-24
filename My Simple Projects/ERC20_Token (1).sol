// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

contract ERC20Token {
    // --- Token Metadata ---
    string public name;      // Token name (e.g., "MyToken")
    string public symbol;    // Token symbol (e.g., "MTK")
    uint8 public decimals;   // Number of decimal places (standard: 18)
    uint private _totalSupply; // Total supply of tokens

    // --- Balances mapping ---
    // Keeps track of how many tokens each address owns
    mapping (address => uint) public Balances;

    // --- Transfer event ---
    // Must be emitted whenever tokens are transferred
    event Transfer(address indexed owner, address indexed to, uint token);

    // --- Constructor ---
    // Initializes token metadata and mints the total supply to the deployer
    constructor () {
        name = "ERC20Token";
        symbol = "ERC20";
        decimals = 18;
        _totalSupply = 10000000 * 10**18; // 10 million tokens with 18 decimals

        // Assign all tokens to contract deployer
        Balances[msg.sender] = _totalSupply;

        // Emit transfer event from address(0) (mint)
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    // --- Total Supply ---
    // Returns the total number of tokens in circulation
    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }

    // --- Transfer function ---
    // Allows sender to transfer their own tokens to another address
    function transfer(address to, uint tokens) public returns(bool success){
        require(Balances[msg.sender] >= tokens, "You have not enough tokens");

        // Deduct tokens from sender
        Balances[msg.sender] -= tokens;

        // Add tokens to recipient
        Balances[to] += tokens;

        // Emit Transfer event
        emit Transfer(msg.sender, to, tokens);
        return true;
    }

    // --- Allowance mapping ---
    // Records how many tokens an owner allowed a spender to use
    mapping (address => mapping (address => uint)) public Allowance;

    // --- Approval event ---
    // Must be emitted when owner approves spender
    event Approval(address indexed owner, address indexed spender, uint token);

    // --- Approve function ---
    // Owner gives permission to spender to use their tokens
    function approve(address spender, uint tokens) public returns (bool success) {
        Allowance[msg.sender][spender] = tokens;

        // Emit Approval event
        emit Approval(msg.sender, spender, tokens);
        return true;
    }

    // --- Allowance function ---
    // Shows how many tokens an owner has allowed a spender to use
    function allowance(address owner, address spender) public view returns (uint remaining) {
        return Allowance[owner][spender];
    } 

    // --- Transfer From function ---
    // Allows spender to transfer tokens on behalf of owner
    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        require(Balances[from] >= tokens, "You haven't enough Balance");
        require(Allowance[from][msg.sender] >= tokens, "Allowance too low");

        // Deduct tokens from the owner's balance
        Balances[from] -= tokens;

        // Add tokens to the recipient's balance
        Balances[to] += tokens;

        // Reduce spender's allowance
        Allowance[from][msg.sender] -= tokens;

        // Emit Transfer event
        emit Transfer(from, to, tokens);

        return true;
    }
}
