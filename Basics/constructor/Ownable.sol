// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyDeployedOwner() {
        require( owner == msg.sender, 'Not deployed owner' );
        _;
    }

    function setOwner(address owner_) public onlyDeployedOwner {
        require(owner_ != address(0), 'Invalid address');

        owner = owner_;
    }

    function opByOwner() public onlyDeployedOwner {

    }

    function opByAnyone() public {
        
    }

}