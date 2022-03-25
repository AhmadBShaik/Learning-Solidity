//SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract NestedMapping {

    mapping(address => mapping(uint => Book)) public userBooks;

    struct Book{
        string title;
        string author;
    }
    function addUserBook(uint _id, string memory _title, string memory _author) public {
        userBooks[msg.sender][_id] = Book(_title, _author);
    }

}