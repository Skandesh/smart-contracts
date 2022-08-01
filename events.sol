//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//Events cannot be read by the contract, only the external entities - one side communication from blockchain to the outside world
contract Event{

    //declaring event 
    event NewTrade(
        uint date,
        address indexed from, //filter - expensive and only 3 indexed columns can be set in a event.
        address to,
        uint amount
    );

    function emitEvent(address to, uint amount) public {
        emit NewTrade(block.timestamp, msg.sender, to, amount); //emits the event and the applications would be listening to this change via web3.js/web3.py
    }
}
