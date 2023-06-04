//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

//EventOraganization - Ticket

contract EventOraganization{

    uint256  numberOfTicket;
    uint256  ticketPrice;
    uint256  totalAmount ;
    uint256  startAt;
    uint256  endAt;
    uint256  timeRange;
    string   message = "BUY YOUR FIRST EVNT TICKET";

    constructor(uint256 _ticketPrice){
        ticketPrice = _ticketPrice ;
        startAt = block.timestamp;
        endAt = block.timestamp;
        timeRange = (endAt - startAt) / 60 / 60 /24;
    }

    function buyTicket(uint256 _value)  public returns (uint256 tickId) {
        numberOfTicket++;
        totalAmount += _value ;
        tickId = numberOfTicket;
    }

    function getAmount() public view returns (uint256){
        return totalAmount;
    }
}