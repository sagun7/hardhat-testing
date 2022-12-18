
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//0x5FbDB2315678afecb367f032d93F642f64180aa3

import "hardhat/console.sol";

contract Token{
    string public name="Hardhat Token";
    string public symbol ="HHT";
    uint public totalSupply = 5;

    address public owner;

    mapping(address => uint) balances;

    constructor(){
        balances[msg.sender] = totalSupply;
        owner=msg.sender;
    }


    function transfer(address to, uint amount) external{
        console.log("Sender balance is %s tokens", balances[msg.sender]);

        require(balances[msg.sender] >= amount,"Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns(uint256){
        return balances[account];
    }
}