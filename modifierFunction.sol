//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//FUNCTION MODIFIER

// IMPORTANCE NOTES
//--MODIFIER ARE THE CODE THAT CAN BE RUN BEFORE AND AFTER THE FUNCTION CALL
//--MAINLY USED FOR ->> 1. RESTRICT THE ACESS,VALIDATE INPUTES,GUARD AGANIST REETRACY HACK
// WE CAN USE IT AS A ABSTRACTION

contract ModifierFunction{

    address public owner;
    uint256 public x =10;
    bool public locked;

    constructor(){
        owner = msg.sender ;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Not a owner");
        _;
    }

    modifier valiadteAaddress(address _addr){
        require(_addr != address(0),"not a owner");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner valiadteAaddress (_newOwner){
        owner = _newOwner;
    }

    modifier noReentracy(){
        require(!locked,"No Reebtrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrementOk(uint256 i) public noReentracy{
        x -= 1;
        if(i>1){
            decrementOk(i-1);
        }
    }
}//2:30 Stopped