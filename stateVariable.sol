//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

contract StateVariable{
    //STATE VARIABLE AFTER CONTRACT LINE 

    // string public MyName = "Manu";
    // uint256 public MyNumber = 990088 ;

    // bytes public byteName = "M-byte" ;
    // bytes public byteNameAgain ;

    // uint256[] publicmyNumber;
    // uint256[] public publicmyNumber;

    string public myString;
    uint256 public myNum;

    // constructor(string memory _my,uint _num) {
    //     myString = _my;
    //     myNum = _num;
    // }

    function Update(string memory _my , uint _num) public {
        myString = _my ;
        myNum = _num ;
    }

}