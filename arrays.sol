// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array{
    //1. Storage arrays - data is stored permenantly inside the blockchain
    uint[] ids; //CRUD is possible in arrays
    uint index;

    function addId() public{
        // ids.push(index+1);
        ids.push(2);
        ids.push(3);
        ids.push(4);

        ids[0] = 20;
        delete ids[1];
    }

  

    //2. Memory arrays - exists only in the function 
    function memoryArray() external pure {
        uint[] memory newArray = new uint[](10);
        newArray[1] = 10;
        newArray[2] = 20;

        newArray[1];

        newArray[1] = 100;
        delete newArray[2];
    }


    //3. array arguments and return array from function

    function getArrayValue(uint[] memory i) internal returns(uint[] memory){

    }
}
