// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract StartStopUpdateExample {
    address public owner;
    bool paused;

    constructor(){
        owner = msg.sender;
    }

    function sendMoney() public payable {

    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner, "Only owner can change the pause state");
        paused = _paused;
    }

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender==owner, "You are not the owner, Only owner can withdraw money");
        require(!paused, "Contract is paused, and temporarily not accepting withdrawls");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to)  public{
        require(msg.sender==owner, "You are not the owner, Only owner can destroy the contract");
        selfdestruct(_to); // transfers all amount in the contract account to the "_to" address and destroys the contract!
    }

    function getBalanceOfContract() public view returns(uint){
        return address(this).balance;
    }   

}