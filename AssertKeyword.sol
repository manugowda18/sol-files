//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

///ASSERT

contract AssertKeyword{

    bool result;
    function add(uint256 _num1,uint256 _n2um) public {

        uint256 sum = _num1 + _n2um;
        assert(sum <= 255);
        result = true ;
    }
    function getResult() public view returns(string memory){
        if(result == true){
            return "No Over Flow";
        }else{
            return "Over flow exit";
        }
    }

}