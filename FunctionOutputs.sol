// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract FunctionOutputs{
    function returnMany() public pure returns(uint, bool){
        return (1, true);
    }

    function returnNamed() public pure returns(uint num, bool condition) {
        return (1, true);
    }

    function returnAssigned() public pure returns(uint num, bool condition){
        num = 1;
        condition = true;
    }

    function destructureAssignments() public pure returns(uint n1, uint n2, bool c1, bool c2){
        (uint num, bool condition) = returnMany();
        (,bool condition1) = returnMany();
        (uint num1,) = returnMany();
        return (num, num1, condition, condition1);
    }
}