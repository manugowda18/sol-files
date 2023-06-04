//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

//creating a contract from another contract

contract Car{
    address public owner;
    string public model;
    address public carAdd;

    constructor(address _owner,string memory _model,address _carAdd) public {
        owner = _owner;
        model = _model ;
        carAdd = address(this);
    }
}

