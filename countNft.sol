//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract CountNftNum{

    uint256 public noOfNfts;

   // TO INCREMENT THE NFT COUONT    
    function addNft() public {
        noOfNfts += 1;
    }
    //TO DCREMENT THE NFT COUNT
    function deletetNft() public {
        noOfNfts -=1;
    }
    // TO VIEW OR CHECK THE TOTAL NFTS 
    function totalNft() public view returns (uint) {
        return noOfNfts;
    }
}