// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//Base contasct X
contract X {

    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

// BASE CONTRACT Y

contract Y {

    string public text;

    constructor(string memory _text){
        text = _text;
    }
}
//two to initazile parent contact

//PASS PAPAMETER

contract B is X("Input x"), Y("input Y"){} // first method

contract C is X,Y{
    //Pass the parameter here in the constrtuctor
    //similar to function 
    constructor(string memory _name , string memory _text) X(_name) Y(_text){}
}
//1.x 2.y 3 D
contract D is X,Y{
    constructor() X("X IS CALLED") Y("Y IS CALLED"){}
}
//X Y E

contract E is X,Y{
    constructor() Y("y is called") X("X IS CALLED"){}
}