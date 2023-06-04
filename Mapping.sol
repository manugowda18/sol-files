//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract MyMappingEx{

    mapping(uint => bool) public myMapping;
    mapping (address => bool) public myAddressMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAdresstoTrue() public {
        myAddressMapping[msg.sender] = true;
    }
}