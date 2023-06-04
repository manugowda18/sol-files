//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//FOR LOOP 

contract forLoop{

    //SYNTAX 
    // for ( inilizations : test condition : itertion loop){
    //     staement if have a if or another
    // }

    uint256[] data;

    function loop() public returns(uint256[] memory){
        for(uint i = 0 ; i < 23 ; i++){
            data.push(i);
        }
        return data;
    }

}
// TIME I END 02:07 ; CONTUNUE