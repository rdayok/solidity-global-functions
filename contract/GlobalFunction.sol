// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

/*
For this challenge:

Write a smart contract that uses global functions in the message context
*/

contract GlobalFunction{

    address public owner;
    uint public remainingGas;
    uint public totalRecived;


    constructor() {
        owner = msg.sender;
    }

    function deposit(uint value) external payable {
        totalRecived += value;
        remainingGas = gasleft();
    }

}