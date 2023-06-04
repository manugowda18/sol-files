//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract MyMapping{
    mapping (uint => bool) public MyMapp;
    mapping (address => bool) public MyAdress;
    mapping (uint => mapping(uint => bool)) public MyMappingMapp;

    function setValuve(uint _index) public {
        MyMapp[_index] = true ;
    }

    function setAdressValue() public {
        MyAdress[msg.sender] = true ;
    }

    function setMyMappingMapp(uint _key1, uint _key2 , bool _value) public {
        MyMappingMapp[_key1][_key2] = _value ;
    }
}