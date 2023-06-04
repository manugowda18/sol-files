//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

//EVENTS IN SOLIDITY
//UP TO 3 PARAMENTER CAN BE INDEXED

contract EventLearn{

    // if we want to save transacton cost we use  event rather thean storage
    event Log(address indexed sender , string message);
    event AnotherLogEmpty();

    function test() public {
        emit Log(msg.sender,"hello world");
        emit Log(msg.sender,"helloevm");
        emit AnotherLogEmpty();

    }

}