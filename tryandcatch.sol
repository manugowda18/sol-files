// //SPDX-License-Identifier: MIT

// pragma solidity 0.8.15; 
// //external used to Try and catch

// contract Foo{
//     address public owner;

//     constructor(address _owner) {
//         require(_owner != address(0), "Invalid address");
//         owner = _owner;
//     }
//     function myfac(uint x) public pure returns(string memory){
//         require(x!=0,"sholud not be eqaul to Zero");
//         return "myfunction is called";
//     }
// }

// contract Bar{
//     event Log(string message);
//     event Log(bytes data);

//     Foo public foo ;

//     constructor() {
//         //this Foo is used for example of try and catch block with external bloick
//         foo = new Foo(msg.sender);
//     }
//    //Exmple of try and catch with external call
//    //tryCatchexternalCall(0) => Log("external call failed")
//    //tryCatchexternalCall(1) => Log("my function is called")
// //    function tryCatchExternalCall(uint _i) public {
// //        try foo.myfac(_i) returns (string memory result){
// //            emit Log(result);
// //        }
// //    }
//    function tryCatchContract(address _owner) public {
//        try new Foo(_owner) returns (Foo foo){
//            //you can use the variable foo here
//            emit Log("FOO CREATED");
//        }catch Error(string memory reason){
//            //catch failing revert() and require()
//            emit Log(reason);
//         }
//     //    }catch (bytes memory reason) {
//     //        //catch using assert
//     //        emit LogBytes(reason);
//     //    }
   
// }