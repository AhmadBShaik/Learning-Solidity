// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract SimpleMapping {

    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    struct Book{
        string title;
        string author;
    }
    constructor(){
        names[1] = "Ahmad";
        names[2] = "Saif";
        names[3] = "Yaseen";
    }    

    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
    }
}