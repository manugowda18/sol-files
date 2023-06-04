//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract DataTypes{

    bool public hey;
    bool public heyOne = true ;
    bool public heyTwo = false ;

    // UINT STANDS FOR UNSIGNED INTEGER,WHICH MEANS THRE NO NEGITIVE NUMBERS

    // uint8 = ranges from 0 to 2**8 -1 = 255
    // uint16 = ranges from 0 to 2**16 -1 = 65535
    //.//
    // uint256 = ranges from 0 to 2**256-1 = 1.1579209e+77 => it is the highest & default value

    uint8 public u8 = 8 ;
    uint16 public u16 = 16 ;
    uint public u256 = 256 ; // t takes uint256 because it is the highest & default 

    // FOR NEGITIVE SAME AS UINT BUT HERE WE ARE USE INT AND THE VALUE OF "int8 = -255 " just change add negitive sign

    int8 public i8 = -8;
    int16 public i16 = -16;
    int public i = -256 ; // t takes uint256 because it is the highest & default 

    // HOW WE CAN ADD MIN & MAX VALUE int

    int public minINt = type(int).min;
    int public maxINt = type(int).max;

    // ARRAY BYTES
    //--FIXED-SIZED OF BYTES ARRAY
    //--DYNAMIC-SIZED OF BYTES ARRAY{DEFAULT}

    bytes1 public a = 0xb5;
    bytes1 public b = 0x56;

    //adress type

    address public heyAdress ;
    address public addr =0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    




}