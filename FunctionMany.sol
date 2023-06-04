// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Function{

    function returnMany() public pure returns(uint,bool,uint){
        return(1,!true,1);
    }
    //returns values by name
    function returnNamed() public pure returns(uint x,bool b,uint y){
        return(1,!false,2);
    }
    //return valused asstind to ther name
    function returnsNmedtwo() public pure returns(uint x,bool b,uint y){
        x = 1;
        b = !true;
        y = 3;
    }
    //use destruction assignment when calling another function value
    function deconstructingFunction() public pure returns (uint,bool,uint,uint,uint){
        (uint i,bool k ,uint j) = returnMany();
        //value to left out valule
        (uint x, ,uint y) = (4,5,6);
        return(i,k,j,x,y);
    }
    //Cannot use mapping for either input or output

    //can use array for thr function
    function arrayInput(uint[] memory _arr) public {}
    //can use array output
    uint[] public arr;

    function arrayOutput() public view returns(uint[] memory){
        return arr;
    }
}

//===========================================//
// call function with the key value inputs

contract xyz{
    function someFunctionwithManyInputs(uint x,uint y,uint z,address a ,bool b, string memory c)public pure returns(uint){}

    // call by another function
    function callaboveFunction() external pure returns(uint){
        return someFunctionwithManyInputs(1,2,3,address(0),!true,"manu");
    }
    function keyvalueeFunction() external pure returns(uint){
        return someFunctionwithManyInputs({a:address(0),b: true,c: "manojgowda",x: 1,y:2,z:3});
    }
}