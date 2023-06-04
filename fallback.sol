//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleFallback{
    uint public lastValueSent;
    string public lastValueFallbace;
    uint public myUint;

    function setMyuint(uint  _setNewuInt) public {
        myUint = _setNewuInt ;
    }
    receive() external payable{
        lastValueSent = msg.value;
        lastValueFallbace = "recived";
    }
    fallback() external payable{
        lastValueSent = msg.value;
        lastValueFallbace = "fallback";
    }

}