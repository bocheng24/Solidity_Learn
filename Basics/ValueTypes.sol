// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValueTypes {

    uint public ux = 25;        // by default - uint256: value range: 0 - 2 ** 256 -1
    uint8 public ux8 = 25;      // value range: 0 - 2 ** 8 -1
    uint16 public ux16 = 25;    // value range: 0 - 2 ** 16 -1
    
    bool public switchOn = true;
    bool public switchOff = false;

    int public i = -12;          // by default - int256: value range: -2 ** 255 - 2 ** 255 - 1
    int128 public i128 = -12;    // value range: range: -2 ** 127 - 2 ** 127 - 1
}