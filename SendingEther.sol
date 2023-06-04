//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

//3-ways to sendf the ether from the contract
// transfer (2300 gas , throws error)
// send (2300 gas ,returns bool)
// call(forword all gas or set gas , returns bool)

contract ReciveEther{
    /* two methos recive() or fallback() ?
     if ether sent : 
     msg.data == empty 
     then "receive()" used else "fallback()" used
    */
    
    // function to recive the ether
    receive() external payable{}

    //function to fallback ether
    fallback() external payable{}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

contract sendEther{
    // using transferkeyword -> not recomended for now
    function sendViaTrnasfer(address payable _to) public payable{
        _to.transfer(msg.value);
    }
    //using the send keyword
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent,"Failed to send the ethr");
    }
    function sendViaCall(address payable _to) public payable {
        (bool sent , bytes memory data) = _to.call{value: msg.value }("");
        require(sent,"Failed");
    }
}
