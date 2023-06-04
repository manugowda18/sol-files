//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//error Handling 
//------------Requere Keyword---
contract RequrieKey{

    function checkInput(uint256 _input) public view returns(string memory){
        require(_input >= 0 ,"Uints is less then 8");
        require(_input <= 255,"uint is greater then 255");
        return "Input is valid";
    }

    function odd(uint _inputis) public view returns(bool){
        require(_inputis % 2 == 0);
        return true;
    }

}