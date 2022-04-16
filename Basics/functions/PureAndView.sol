// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract PureAndView {

    uint public step = 1;

    function incBlockNum() external view returns(uint) {
        uint num = block.number;
        return num + step;
    }

}