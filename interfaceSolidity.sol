//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; 

//interface 

contract InterfaceLeraing{
    uint public count;
  
    function increment() external {
        count +=1;
    }
}
interface IncrementCount{
    
    function count() external view returns(uint);
    function increment() external;

}
contract myContracr{
    function incrementCounterOky(address _counter) external {
        IncrementCount(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint){
        return IncrementCount(_counter).count();
    }
}