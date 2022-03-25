// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage{
    string public message;

    function setMessage(string calldata _message) external {
        message = _message;
    }


    function getMessage() public view returns(string memory){ // Actually we don't need this getter, because public state variables provide getters by default
    
        return message;
    }
}