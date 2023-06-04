//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

// Function and state variable have to declare weather they are accessiable by other contracts.

// Function can be declare 

//  >> public : any contract & account can call
//  >> private : only inside the that define the function
//  >> external : only in side the contract that  only inherit an internal function 
//  >> internal: only other contract and account can call 
contract  Base{
    //private function can only be called
    //-inside this contract
    // contract that inherts this contract cannot this function
    function privateFunction() private pure returns( string memory){
        return "private function called";
    }
    function testPrivatefunction() public pure returns (string memory){
        return privateFunction();
    }

    //internal function called
    //-inside the contract 
    //-inside contrats thst inherit this contract
    function internalFunction() internal pure returns(string memory){
        return "internal function called";
    }
    function testInternalFunction() public pure virtual returns(string memory){
        return internalFunction();
    }

    //public anyawhere in the contract 
    function publicFunction() public pure returns(string memory){
        return "Public function called";
    }

    //External function
    //-by other contract and acccounts
    function externalFunction() external pure returns(string memory){
        return "External function called";
    }

    // this function will not compile since were trying to call an external function here.
    // function textExternalFunction() public pure returns(string memory){
    //     return externalFunction();
    // }\


    //state variables
    string private privateVar = "Private This variable";
    string internal interVar = "Internal Variable";
    string public publicVariable = "Public Variable";
    //state variables cant be external so this code wont complile
}

contract Child is Base {
    function testInternalFunction() public pure override returns (string memory){
        return internalFunction();
    }
}


