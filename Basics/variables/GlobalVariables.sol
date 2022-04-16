// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {

    function foo() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint currentTime = block.timestamp;
        uint blockNum = block.number;

        return (sender, currentTime, blockNum);
    }
}