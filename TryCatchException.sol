// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TryCatch{
    error NotAllowedError(string);
    function trynow() public pure {
       // require(false, "Erorr Message!!");
       //assert(false);
       revert NotAllowedError("YOUR ARE NOT ALLOWED!!!!!!!!");
    }
}

contract TryCatchNow{

    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLoggByte(bytes lowLevelData);
    
    function catchNow() public{
        TryCatch sc = new TryCatch();
       try sc.trynow() {
           ///code
       }catch Error(string memory reason){
           emit ErrorLogging(reason);
       }catch Panic(uint errorCode){
           emit ErrorLogCode(errorCode);
       }catch(bytes memory lowLevelData){
           emit ErrorLoggByte(lowLevelData);
       }
    }
}