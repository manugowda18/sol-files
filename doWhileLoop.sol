//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//SOLIDITY - Do-While-Loop

contract doWhileLoop{
    //SYNTAX
    // do{
    //     block of statement exticuted 
    // } while(condition)

    uint256[] data;
    uint8 k =0 ;

    function loop() public returns (uint256[] memory){
        do{
            k++;
            data.push(k);
        }while(k < 5);
        return data;
    }

}