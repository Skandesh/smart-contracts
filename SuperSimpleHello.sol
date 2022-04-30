//SPDX-License-Identifier: MIT

//Mentioning which version of compiler for converting into bytecode - 0.8.4 or more
pragma solidity ^0.8.4;

//Naming the contract with appropriate name as it helps readability and referrence
contract SuperSimpleHello{
    //welcome and number are global variables & the scope is within this contract
    string public welcome = "Hello world"; // welcome - a string variable
    uint8 number;   // allocates 8 bits to this value 
    

    //Get a number from user and store it in the global variable `number`
    //Takes up some gas as the value is stored in the blockchain
    //Not sure if we can provide any default value if no number is passed to this function - https://github.com/ethereum/solidity/issues/232
    
    function storeNumber(uint8 _number) public {
        number = _number;
    }

    //See the content of that number variable.
    //This function doesn't cost any gas to execute, as it doesn't affect any state of the blockchain
    
    function retrieveNumber() public view returns(uint8){
        return number;
    }
}
