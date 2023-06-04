//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleContrace{
    string public MyString = "hello";

    function updateString(string memory _newString) public payable {
        if(msg.value == 1 ether){
            MyString = _newString;
        }else{
            payable(msg.sender).transfer(msg.value);
        }
    }
}