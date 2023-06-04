// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ArrayReplacefromEnd{
    uint[] public arr;

    //deleting the elementd & creating thr a gap in the array

    function remove(uint _index)public{
        //move the last element to the place to delete
        arr[_index] = arr[arr.length - 1];
        //remove the last element using pop pop will remove the last elemnt in thr array
        arr.pop();
    }
    function test() public{
        arr = [1,2,3,4];

        remove(1);
        //[1 4 3 ]
        assert(arr.length==3);
        assert(arr[0] ==1 );
        assert(arr[1] ==4 );
        assert(arr[2] ==3);

        remove(2);
        assert(arr.length== 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);

    }
}