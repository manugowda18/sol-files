// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//Keccak256-it create a new id for every input

contract Hashfunction {
    function hash(string memory _text,uint _num,address _addr) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_text,_num,_addr));
    }
    //EXAMPLE OF HASH COLLISON
    // : HASH COLLISION CAN OCCUR WHEN YOU PASS MORETHEN ONE DYNAMIC DATA TYPE TO "abi.encodePacked".
    // :In such case,you should use "abi.encode" insted
    function collision(string memory _text, string memory _anotherText) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_text,_anotherText));
    }
}

// contract GuessTheMagicNumber{
//     bytes public answer = 0x60Ab8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

// }