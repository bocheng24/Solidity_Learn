// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {

    function foo() external pure {
        uint x = 200;
        x ** 2;
    }
}