// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract Ownable {
    address public owner;
    uint public publicCount;
    uint public ownerCount;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Your are not owner");
        _;
    }
    
    function setOwner(address _newOwner) external onlyOwner{
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }

    function ownerFunc() external onlyOwner {
        ownerCount++;
    }

    function anyOneCanCall() external {
        publicCount++;
    }

}