//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 
//solidity supports multiple inheritahnce. Contract can inherit other contract by using the "is" keyword.;
// Function that is going to overridien by child contract must be decclared as "virtual";
//Function that is going to overridien a parent function must be use the keyword "override";

/*Graph of inheritance 

   A
   /\
  B  C
  /\  \
  F D, E
  */

contract A {
    function foo() public pure virtual returns(string memory){
        return "A";
    }
}

//inherite A
contract B is A {
    //overriding the A.foo()
    function foo() public pure virtual override returns(string memory){
        return "B";
    }
}

// inheritance A
contract C is A {
    //overriding the B.foo()
    function foo() public pure virtual override returns(string memory){
        return "C";
    }
}
//cantract can inherite from multiple paraent contract
//when function is called that is defined multiple times in
//different contracts,parents contracts are searched fom right to left , and in depth-first manner
contract D is B, C {
    //D.foo() returns "C"
    //since is the right most parent contract with function foo()
    function foo() public pure override(B,C) returns(string memory){
        return super.foo();
    }
}
contract E is C,B{
    //D.foo() returns "b"
    //since is the right most parent contract with function foo()
    function foo() public pure override(C,B) returns(string memory){
        return super.foo();
    }
}
//Inheritance must be orderd from "most base-like" to "most derived".
//swapping the oredr we can get compilation error
contract F is A,B{
    function foo() public pure override(A,B) returns(string memory){
        return super.foo();
    }
}

