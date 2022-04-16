// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;
    uint private step = 1;

    function inc() external {
        count += step;
    }

    function dec() external {
        count -= step;
    }
}