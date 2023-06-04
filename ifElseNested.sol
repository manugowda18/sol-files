//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ifElseContract{

    uint256 public myNum = 20;
    string public myString = "pass a value" ;

    // function getUpdate(uint256 _myNum) public {
    //     if(_myNum == 5){
    //         myString = "HEY YOUR CORRECT THE VLUES IS 5";
    //         myNum = _myNum ;
    //     }else if (_myNum == 4){
    //         myString = "HEY YOUR ARE 4";
    //         myNum = _myNum ;
    //     }else{
    //         myString = "HEY WELCOME MANOJGOWDA KS";
    //         myNum = 9900882019;
    //     }
    // }

    function shortIfElseCode(uint256 _myNum) public returns(string memory){

        //NORMELLY WE WRITE 
        // if(_myNum==5){
        //     myString = "Hey Manu";
        // }else{
        //     myString = "No One";
        // }


        // THE SHORT WAY WE CAN WRITE WHILE RDUCEING & USING TERRNEARY EQUATION
        return _myNum == 5 ? myString = "Wow its Updated" : myString = "it also updated but yore value is is false";


    }


}