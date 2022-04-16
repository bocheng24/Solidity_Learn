// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IFElse {

    function checkSize(uint size) external pure returns (string memory) {
        if (size < 10) {
            return "small";
        } else if (size < 20) {
            return "medium";
        }

        return "large";
    }

    function checkSold(bool sold) external pure returns (string memory) {
        return sold ? 'sold' : 'not sold';
    }

}