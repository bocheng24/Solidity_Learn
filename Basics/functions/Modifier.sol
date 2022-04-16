// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Modifier {

    modifier validNum(uint num) {
        require (num < 10);
        _;
    }

    function incByOne(uint x) public pure validNum(x) returns (uint) {
        return x += 1;
    }

}