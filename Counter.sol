// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Counter{

    int public count = 0;

    function increment() external{
        count++;
    }

    function decrement() external{
        count--;
    }
}