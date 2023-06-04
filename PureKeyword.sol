//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//PURE
contract PureKeyword{
    //HERE WE CAN ACESS ONLY LOACAL VARIABLE WITHIN THE FUNCTIOM
    
    function getData() public pure returns(uint256,uint256){
        uint256 a = 23;
        uint256 b=25;
        return(a,b);
    }
}