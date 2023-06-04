//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

contract LearnFunction{

     uint256 public hey;

    // function grtInofo() public view returns (uint){
    //     return hey;
    // }

    // function updateData(uint _hey) public{
    //     hey = _hey;
    // }
    function addTwo(uint _a,uint _b) public returns(uint) {
        uint sum = _a + _b;
        hey = sum ;
        return hey; 
    }

}
