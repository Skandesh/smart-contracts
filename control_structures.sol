//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Conditionals{
    bool amountSent;
    uint data;

    function checkCondition(uint _data) payable public{
    //Sender should send more than 1000 wei or should have sent before 24th July 2022 for free  
    if((msg.value > 1000 || block.timestamp < 1658671779) && !amountSent){
         data = _data;
        getValue();
        amountSent = true;
    }
    else {
        getValue();
    }
    }

  

    function getValue() public view returns(uint){
        return data;
    }
}
