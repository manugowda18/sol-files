//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//CONSTANTS

contract ConstantWork{
    // I PAID GAS FEE WITH OUT INCLUDEING THE CONSTANTS = 130266
    //address public myAddaer = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;

   // With Constant variable = 104205 Very less compare to without using the gas fee
    address public constant myAddres = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;

    function getAddres() public view returns(address){
        return myAddres;
    }
}
  