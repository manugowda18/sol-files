//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

// CALL FUNCTION 

contract Reciver{
    event Received(address caller,uint amount,string message);
    fallback() external payable{
        emit Received(msg.sender,msg.value,"Fallback was Called");
    }
    function foo(string memory _message,uint _x) public payable returns(uint){
        emit Received(msg.sender,msg.value,_message);

        return _x + 1;
    }
}
contract caller{
    event Response(bool sucess, bytes data);

    function testcallFo(address payable _addr) public payable{
        //by specifying the custom gas fee
        (bool sucess , bytes memory data) = _addr.call{value: msg.value , gas: 6000}(
        abi.encodeWithSignature("foo(string,uint256)","call foo",123)
        );

        emit Response(sucess , data);
    }
    //calling function doesnt exit tiggers the fall back function
    function testFallback(address payable _addr) public payable{
        (bool success , bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("doesnotExist()")
        );
    }
}