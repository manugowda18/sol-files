// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ExampleRequied{
    
    mapping(address => uint) public balanceRecived;

    function ReciveMoney() public payable{
        balanceRecived[msg.sender] += msg.value;
    }

    function withDrawMoneyto(address payable _to,uint _amount) public {
        require(_amount <= balanceRecived[msg.sender], "there is no funds to withdraw");
        // assert
        balanceRecived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}