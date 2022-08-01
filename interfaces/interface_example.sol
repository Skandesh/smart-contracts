//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './interaction_from_external_file.sol';


contract firstContract {

    address addressSecondContract;

    function setAddressSecondContract (address _addressSecond) external {
        addressSecondContract = _addressSecond;
    }

    function invokeSecondContract() external view returns(string memory){
        InterfaceSecondContract s = InterfaceSecondContract(addressSecondContract);

        return s.helloWorld(); 
    }
}



/* used in interaction_from_external_file.sol file

contract secondContract{
    function helloWorld() external pure returns(string memory){
        return 'Hello World';
    }
}

*/
