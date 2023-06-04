//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//REVERT KEY WORD

contract revertKeyword{

    function overFlow(uint _num1, uint _num2) public view returns(string memory , uint){
        uint sum = _num1 + _num2 ;

        if(sum < 0  || sum > 255){
            revert("Over Flow");
        }else{
            return ("NO OverFlow",sum);
        }
    }
}