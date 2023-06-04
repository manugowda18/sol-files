// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library Math{
    function sqrt(uint y) internal pure returns (uint z){
        if(y>3){
            z = y ;
            uint x = y / 2 + 1 ;
            while(x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        }else if(y != 0){
            z = 1;
        }
        //z = 0 ; default
    }
}

contract TestMath{
    function testSqure(uint x) public pure returns(uint){
        return Math.sqrt(x);
    }
}

//ARRAY FUNCTION TO DELETE ELEMENTS AT INDEX AND RE ORGANIZE THE ARRAY , SO THERES NO GAP BETWEEEN ELEMENTS

library Array{
    function remove(uint[] storage arr, uint index) public {
        //move the last elemets into the place to delete
        require(arr.length > 0 ,"Cant remove empty arry");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}

contract Testarray{
    using Array for uint[];

    uint[] public arr;

    function ArrayRemove() public {
        for(uint i = 0 ; i < 3 ; i++){
            arr.push(i);
        }
        arr.remove(1);
        assert(arr.length == 2) ;
        assert(arr[0] == 0);
        assert(arr[1] == 2);
    }
}