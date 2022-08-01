//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Main motive is to reuse contracts.

import "./parent.sol";

//Inheriting Parent in Child contract.
contract Child is Parent{
    uint public getSumValue;

    function getSum() external returns(uint){
       getSumValue =  addTwoNumbers(4,5);
       return getSumValue;
    }
    
}
