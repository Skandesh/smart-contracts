//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract getSet{
    uint data ;

    constructor(uint _a)  {
        data = _a;
    }

    //no gas to call this function, since only values are viewed.
    function get() external view returns(uint){
        return data;
    }

    //we need to pay gas everytime this function is called
    function set(uint _data) public{
        data = _data;
    }



}    

