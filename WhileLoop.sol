//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract whileLoop{
    //Synatax 

    // while(condition){
    //   statement or block of the if else statement condition is true
    // }    we need to avoid the loop because it wants more gas fee

    uint256[] data;
    uint8 k =0;
    
    function loop() public returns (uint256[] memory){
        while(k < 5){
            k++;
            data.push(k);
        }
        return data;
    }
}