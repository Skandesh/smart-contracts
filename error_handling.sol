// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ErrorHandling{

//What happens during an error?

//1. statements below the error line won't be executed
/*
    array[10].push(39);  -- this errors as only 10 elements is present in array
    array[2] = 23;  -- this won't even execute

*/

//2. any state changes in the contract would be reverted
/*
    uint balances;
    fn getBal(){
        a = 10;
        balances.transfer(a);  --- if there's an error here, all the other variables would be reverted back to its old state
        a -=10;
        balances +=a;
*/
//3. Gas at that point of error (or) whole gas supplied to the contract would be consumed.

//some error handling functions
    bytes32  a;
    function errorHandling() external view {
        if(a != 'Andrews'){
            revert("Blacklisted Andrews revert");
        }

        require(a!="Andrews", "Blacklisted Andrews require");  //checked in runtime
        assert(a !='Andrews');  //checked during compile time, if this fails then there's an error in the contract and these are generally used while testing.
    }

    function getName(bytes32  _name) external returns(bytes32){
        a = _name;
        return a;
    }

     function getName() external view returns(bytes32){
        return a;
    }


}
