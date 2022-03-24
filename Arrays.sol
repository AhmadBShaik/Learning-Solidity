// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract Array{
    uint[] public dynamicArray= [1]; 
    // uint[] public dynamicArray1 = []; // It will not work because solidity don't know the type of assigned array 
    uint[3] public staticArray = [1, 2, 3];
    // uint[3] public staticArray1 = [];  // It will not work (size of array is not equal to number of elements)
    // uint[3] public staticArray2 = [];  // It will not work (size of array is not equal to number of elements)

    function arrayMethods(uint _x) external{
        dynamicArray.push(_x); // if _x is 2 result will be [1,2]
        dynamicArray[1] = 5; // [1,5]
        delete dynamicArray[0]; // [0,5] the deleted number on the index is replaced by uint default value( default uint value is 0)
        dynamicArray.pop(); // [0] removes last element from array

        // staticArray.push(5); // array method pop is not available for static array
        // staticArray.pop(); // array method pop is not available for static array
        // uint len = dynamicArray.length; // returns length of dynamicArray

        // create array in memory
        uint[] memory a = new uint[](5); // static array

        // a.push(); // array method pop is not available for static array 
        // a.pop(); // array method pop is not available for static array
        a[1] = 123;
    }

    function returnArray() external view returns(uint[] memory){
        return dynamicArray; // returning arrays consumes more gas
    }

}