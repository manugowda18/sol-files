// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.1/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    mapping(address => uint256) public nftCount;
    uint256 public maxNftPerWallet = 3;

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {}

    function mint(address to, uint256 tokenId) public {
        require(nftCount[to] < maxNftPerWallet, "Wallet already has 3 NFTs");
        nftCount[to]++;
        _safeMint(to, tokenId);
    }

    function transfer(address from, address to, uint256 tokenId) public override {
        require(nftCount[to] < maxNftPerWallet, "Recipient wallet already has 3 NFTs");
        nftCount[from]--;
        nftCount[to]++;
        super.transfer(from, to, tokenId);
    }
}