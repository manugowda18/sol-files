//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleMappingWithdrws{

    mapping(address => uint) public balanceRecived;

    function sendMoney() public payable {
        balanceRecived[msg.sender] += msg.value;
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdrawAllMoney(address payable _to) public {
        _to.transfer(balanceRecived[msg.sender]);
        balanceRecived[msg.sender] = 0;
    }
}