// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {

    uint public _num;
    address public owner;

    constructor (uint num) {
        _num = num;
        owner = msg.sender;
    }
}