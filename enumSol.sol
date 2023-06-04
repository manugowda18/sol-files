// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract eNum{
    //enum represeating the shipping stuats
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled 
    }
    //defalut vale is going to be first element in tht list
    // defnation of type , in this case "Pending"
    Status public status;
    // returns uint
    // pending - 0;
    // shipped -1;
    // Accepted - 2;
    // Rejected - 3;
    // Canceled -4 ;

    function grt() public view returns(Status){
        return status;
    }
    //updating thr status by passing uint into input
    function set(Status _status) public{
        status = _status;
    }
    // we can update the spefiec enum like this
    function cancel() public{
        status = Status.Canceled;
    }
    function pending() public{
        status = Status.Pending;
    }
    function rejected() public{
        status = Status.Rejected;
    }
    //delete the function
    function reset() public{
        delete status;
    }




}