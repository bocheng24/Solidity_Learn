// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandling {

    function useRequire(uint _x) external pure returns (uint) {
        require(_x < 10, 'x is not less than 10');

        return _x ** 2;
    }

    function useRevert(uint _x) external pure returns (uint) {
        
        if (_x > 10) {
            revert('x is not less than 10');
        }

        return _x ** 2;
    }

    uint tID = 1;

    function getTransactionId() public view returns (uint) {
        assert(tID == 1);
        return tID;
    }

    function setTransactionId() public {
        tID += 1;
    }

    function gasRefund(uint _i) public pure returns (uint) {
        _i += 1;
        require(_i < 3);

        return _i;
    }

    error myError(address caller, uint x);

    function incByOne(uint x) public view returns (uint) {
        if (x > 10) {
            revert myError(msg.sender, x);
        }

        return x += 1;
    }

}