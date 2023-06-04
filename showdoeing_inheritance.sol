//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

contract A{
    string public name = "Contract A";

    function getName() public view returns(string memory){
        return name;
    }
}

//SHADOW INHERITANCE AND SHOWING IS NOT ALLOWED IN SOLIDITY < 0.6 & THIS WILL NOT COMPILE AS WELL
// contract B is A{
//     string public name = "Contract b";
// }

contract C is A {
    //This is the correct way to override inherd state variable
    constructor(){
        name = "Contract C";
    }
    //get.c returns "contract C"
}