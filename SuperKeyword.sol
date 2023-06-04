//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

//SUPER KEY WORD:IT HELPS TO INHERIT THE PARENT CONTRACT

/*Inheritance tree
    A
   / \
  B   C
   \ /
    D
*/
contract A{
    //this calls an event . you can emit events from your function and they are logged to transaction  log.
    //in our case this well the use full for us to traceing a function calls
    event Log(string message);

    function foo() public virtual{
        emit Log("A.foo() Called");
    }
    function bar() public virtual{
        emit Log("A.bar() Called");
    }
}

contract B is A{
    function foo() public virtual override{
        emit Log("B.foo Called");
        A.foo();
    }
    function bar() public virtual override{
        emit Log("B.foo called");
        super.bar();
    }
}

contract C is A{
    function foo() public virtual override{
        emit Log("C.foo Called");
        A.foo();
    }
    function bar() public virtual override{
        emit Log("C.foo called");
        super.bar();
    }
}

contract D is B,C{
    function foo() public override(B,C){
        super.foo();
    }
    function bar() public override(B,C){
        super.bar();
    }
}
