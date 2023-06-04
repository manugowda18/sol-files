//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

import "./importingthrEnum.sol";

contract enumProperis{
    Status public status;
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
    //delete the function
    function reset() public{
        delete status;
    }

}