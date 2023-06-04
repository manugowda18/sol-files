// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//ABI ENCODED

interface IERC20{
    function transfer(address,uint) external;
}

contract Token{
    function transfer(address,uint) external{}
}

contract abiEncoeded{

    function test(address _contract , bytes calldata data ) external{
        (bool ok, ) = _contract.call(data);
        require(ok , "call data failed");
    }

    function encodeWithSignature(address to, uint amount) public pure returns(bytes memory){
        //typo no check = "transfer(address,uint)"
        return abi.encodeWithSignature("transfer(address,uint)",to,amount);
    }
    function encodeWithSelector(address to,uint amount) external pure returns(bytes memory){
        //typo notchecked (IERC20.transfer.selector,true,amount)
        return abi.encodeWithSelector(IERC20.transfer.selector,to,amount);
    }
    function encodeCall(address to,uint amount) external pure returns(bytes memory) {
        //typo & type errors are not compile
        return abi.encodeCall(IERC20.transfer,(to,amount));
    }
}