//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface InterfaceSecondContract{
    function helloWorld() external pure returns(string memory);
}
contract secondContract{
    function helloWorld() external pure returns(string memory){
        return 'Hello World';
    }
}
