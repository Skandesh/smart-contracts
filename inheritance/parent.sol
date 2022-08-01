//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Main motive is to reuse contracts.
contract Parent {   
    uint sum;
    
    function addTwoNumbers(uint _x, uint _y)  internal returns(uint){
        sum = _x + _y;
        return sum;
    }
}
