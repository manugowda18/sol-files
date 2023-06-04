// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructMap{

    struct Transaction{
        uint amount;
        uint timestamp;
    }
    struct Balance{
        uint totalBalance;
        uint numOfDeposits;
        mapping(uint => Transaction) deposits;
        uint numOfWithdraw;
        mapping(uint => Transaction) withdrawals;
    }

    mapping(address => Balance) public balances;

    function depositMoney() public payable {
        balances[msg.sender].totalBalance = msg.value;

        Transaction memory deposit = Transaction (msg.value , block.timestamp);
        balances[msg.sender].deposits[balances[msg.sender].numOfDeposits] = deposit;
        balances[msg.sender].numOfDeposits++;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        balances[msg.sender].totalBalance -= _amount;

        Transaction memory withdrawal = Transaction (_amount , block.timestamp);
        balances[msg.sender].withdrawals[balances[msg.sender].numOfWithdraw] = withdrawal;
        balances[msg.sender].numOfWithdraw++;

        _to.transfer(_amount);
    }

    function getDeposits(address _from,uint _numDeposits) public view returns(Transaction memory){
        return balances[_from].deposits[_numDeposits];
    }

    function getWithdraws(address _from,uint _numWithdraw) public view returns(Transaction memory){
        return balances[_from].withdrawals[_numWithdraw];
    }
}