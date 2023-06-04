//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract MyFirstContract{
    string public name;
    uint public contact;
    string public district;
    string public village;

    function setInfo(string memory _name,string memory _village, string memory _district , uint _contact) public {
        name = _name;
        village = _village;
        district = _district;
        contact = _contact ;
    }
}