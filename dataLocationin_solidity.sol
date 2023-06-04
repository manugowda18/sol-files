// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract DtaLocations{

    uint[] public arr;
    mapping(uint => address) map ;
    struct MystruCt{
        uint foo;
    }
    mapping(uint => MystruCt) newStruct;

    function f() public{
        //call_f with the state a mapping
        _f(arr,map, newStruct[1]);

        // GET STRUCT FROM THE MAPPING
        MystruCt storage myStructa = newStruct[1];

        //create a struct in memory

       MystruCt memory  myMemStruct = MystruCt(0);
    }
    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MystruCt storage _myStruct
    ) internal {
        //doing some thing stoerage variable

    }
    function g(uint[] memory _arr) public returns(uint[] memory){
        //doing somethiosg awith memory
    }
    function h(uint [] calldata _arr) external{
        //ddoooooo something the functionllity
    } 
}

// Importemt Concepts
// Storage: used to store the data on the Blockchain
// Memory : used to store the data on the memory only not in the Blockchain