//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 
 

contract PayableKeyword{

    //payable function to recive the erather
    address payable public owner;

    //constructor payable can recive the eather
    constructor () payable {
        owner = payable(msg.sender);
    }
    //deposit function payable
    function deposit() public payable{} 

    //deposit function not payable
    function notdpodit() public{}

    //withdraw function 
    function withdraw() public {
        uint amount = address(this).balance;

        (bool sucess ,) = owner.call{value: amount}("");
        require(sucess,"Failed to send the ether");
    }
    function Transfer(address payable _to,uint _amount) public {
        (bool sucess ,) = _to.call{value: _amount}("");
        require(sucess,"Failed to seed the ether");
    }


}