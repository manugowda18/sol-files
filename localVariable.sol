//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//LOACAL VARIBLE

contract LocalVariables{

    uint256 public MyNumber; // THIS IS STATE VARIABLE

    // function loacl() public pure returns (uint){
    //     //the variable define inside the function knowns as loacal variable
    //     //it store in memory not the the blockchain
    //     uint256 i =900;
    //     return i ;
    // }
     function loacl() public  returns (address ,uint,uint){
        //the variable define inside the function knowns as loacal variable
        //it store in memory not the the blockchain
        uint256 i =900;
        MyNumber = i ;
        i += 67 ;

        address myAdrs = address(1);

        return (myAdrs,MyNumber,i);
    }

}