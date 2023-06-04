// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Array{
    // MANY WAYS TO DECLARE THE ARRAY
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3,4];

    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256){
        return arr[i];
    }
    //return entere array
    function getEntire() public view returns(uint256 [] memory){
        return arr;
    }
    function push(uint256 i) public {
        //this will add i + 1
        arr.push(i);
    }
    function pop() public {
        //i-1
        arr.pop();
    }
    function getlength() public view returns(uint256){
        return arr.length;
    }
    function remove(uint256 index)  public{
        //this delete csnt change the array length 
        // it reset the value at the index to its defult
        //in this case 0
        delete arr[index];
    }
    function arrayexample() external {
      //  create array in the memory , only thr fixede size can be created
      uint[] memory a = new uint256[] (5);// seting the fiexde arry
    }
}