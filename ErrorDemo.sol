// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;
contract ErrorDemo{
    function testRequire(uint _i) public pure{
        require(_i <= 10, "i > 10");

    }

    function testRevert(uint _i) public pure{
        if(_i > 1) {
            revert("i > 10");
        }
    }

    uint public num = 123;

    function testAssert() public view{
        assert(num == 123);
    }

    function foo() public {
        num += 1;
    }

    error myCustomError(address caller, uint i);

    function testCustomError(uint _i)public view{
        if(_i > 10){
            revert myCustomError(msg.sender, _i);
        }
    }
}