//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//GLOBAL VARIABLE

contract GlobalVariable{

    //GOLBAL VARIABLES IN THE SOLIDITY
    address public owner;
    address public Myblockhash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public FirstFour;


    constructor() {
        owner = msg.sender;

        Myblockhash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        callData = msg.data;
        origin = tx.origin;
        gasprice = tx.gasprice;
        FirstFour = msg.sig;

    }

}