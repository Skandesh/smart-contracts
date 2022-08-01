//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendRecieve{

    uint balance;

    //to address should also be payable
    function send(address payable to, uint amount) payable external{
        require(amount>1000000000000000,"Not enough send more");
        to.transfer(amount);
    }

    //function itself should be payable, as the amount would be stored by the contract 
    function recieve() payable external{ 
        balance = address(this).balance;

    }

    function getBalance() external view  returns(uint){
        return balance;
    }
}
