//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleBankActivity{
    mapping (address => uint) public balanceRecived;

    function sendmoney() public payable {
        balanceRecived[msg.sender]+=msg.value;
    }

    function getbalance() public view returns(uint){
        return address(this).balance;
    }
    function sendmoneyall(address payable _to) public {
        uint balanceSendOut = balanceRecived[msg.sender];
        balanceRecived[msg.sender] = 0;
        _to.transfer(balanceSendOut);
    }
}