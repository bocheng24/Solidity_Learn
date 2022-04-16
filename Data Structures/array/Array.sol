// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array {

    uint[] public nums = [1, 2, 3];
    uint[3] public numsFixed = [12, 12, 98];

    uint public x = nums[1];

    uint public len = nums.length;

    function pushArray(uint n) external {
        nums.push(n);
    }

    function updateArray(uint idx, uint val) external {
        nums[idx] = val;
    }

    function popElem() external {
        nums.pop();
    }

    function createMemoryArr() external {
        uint[] memory arrMem = new uint[](5);
    }

}