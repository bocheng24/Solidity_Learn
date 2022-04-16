// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariables {
    
    // Below are state variables
    
    uint16 public ux16 = 25;    
    bool public switchOn = true;
    bool public switchOff = false;

    function foo() external pure {
        
        // This is not a state variable
        uint x = 2;

    }
}