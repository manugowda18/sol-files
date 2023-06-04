//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleWallet{

    uint public balanceRecived;
     
    function deposit() public payable {
        balanceRecived += msg.value;
    }
    function getcontractBalance() public view returns(uint) {
        return address(this).balance;
    }
    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getcontractBalance());
    }
    function withToAdress(address payable to) public{
        to.transfer(getcontractBalance());
    }
}