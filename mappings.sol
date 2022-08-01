//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    //1. Declare mappings
    mapping(address=> uint) balances;
    mapping(address=>mapping(address=>bool)) approved;

    mapping(address=> uint[] )scores;
    function getBalance(address spender) public {
         //2. C.R.U.D
        //Create
        balances[msg.sender] = 100;
        //Read
        balances[msg.sender];
        //Update
        balances[msg.sender] = 200;
        //Delete 
        delete balances[msg.sender];


        //3. default values 

       // balances[addressesThatDoNotExist] = 0;

       //4. nested mapping
       approved[msg.sender][spender] = true;
       approved[msg.sender][spender] ;
       approved[msg.sender][spender] = false;
       delete approved[msg.sender][spender];

       // 4. nested mapping - next version
       //scores[msg.sender] = new uint[](2); -- this definition is not required, as we have already defined it before to be an array
       scores[msg.sender].push(34);

      



    }

   
}
