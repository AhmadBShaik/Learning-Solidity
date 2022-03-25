// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract MappingExample2{
    mapping(address => uint) public balances;

    function addCurrentAccountBalance() public{
        balances[msg.sender] = msg.sender.balance;
    }
}