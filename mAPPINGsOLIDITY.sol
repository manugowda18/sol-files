// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

// mapping(keytype => valuetype).
contract MappingLearn{
    //mapping ADDRESS
    mapping(address => uint256) public myMap;
    
    function getMap(address _addr) public view returns(uint256){
        // Mapping always returns a value
        //if the value was never set , it well b ethe return defalut value
        return myMap[_addr];
    }
    function upadateAddress(address _addr , uint256 _i) public {
        //the upadting the value of the address
        myMap[_addr] = _i;
    }
    function removeData(address _addr) public {
        //reset the vcalue of the defalut
        delete myMap[_addr]; // the keyword "delete" 
    }
}

contract NestetMpping{
    //nseted mapping
    mapping(address => mapping(uint256 => bool)) public nested;

    function getMaap(address _addr1 , uint256 _i) public view returns(bool){
        return nested[_addr1][_i];
    }
    function setMaap(
        address _addr1,
        uint256 _i,
        bool _boo
    )public{
        nested[_addr1][_i] = _boo;
    }
    function remove(address _addr1,uint256 _i) public{
        delete nested[_addr1][_i];
    }
}