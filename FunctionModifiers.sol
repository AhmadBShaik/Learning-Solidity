// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract FunctionModifiers{
    // bool public paused1;
    // uint public count1;

    // function setPause1(bool _paused) external{
    //     paused1 = _paused;
    // }

    // function inc1() external {
    //     require(!paused1, "Paused1");
    //     count1 += 1;
    // }

    // function dec1() external{
    //     require(!paused1, "Paused1");
    //     count1 -=1;
    // }

    // ===============================
    bool public paused2;
    uint public count2;

    function setPause2(bool _paused) external{
        paused2 = _paused;
    }
    modifier whenNotPaused() {
        require(!paused2, "paused 2");
        _;
    }
    function inc2() external whenNotPaused{
        count2 += 1;
    }

    function dec2() external whenNotPaused{
        count2 -= 1;
    }
    // ===============================
    modifier cap(uint _x){
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x){
        // require(_x < 100, " x >= 100");
        count2 += _x;
    }


    uint public testCount;
    modifier sandwich() {
        testCount++;
        count2 += 10;
        _;
        testCount++;
    }

    function foo() external sandwich {
        count2 += 1;
    }
}