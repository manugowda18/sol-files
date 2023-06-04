//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

//CALLING THE OTHER CONTRACT 

contract Calle{
    uint public x;
    uint public value ;

    function setX(uint _x) public returns(uint) {
        x = _x;
    }

    function setXandSendEther(uint _x) public payable returns(uint,uint){
        x = _x;
        value = msg.value;

        return(x,value);
    }
}

contract caller{
    function setX(Calle _calle , uint _x) public {
        uint x = _calle.setX(_x);
    }
    
}