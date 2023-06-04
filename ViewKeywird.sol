//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ViewKeyword{

    uint256 Num1 = 4;
    uint256 Num2 = 5 ;

    //USING VIEW KEYWORD USED TO CHECJ THE STATE VARIABLE

    // function getResult() public view returns(uint256 , uint256){
    //     return (Num1,Num2); // IF I RETURN THE NUM1+NUM2 IT GIVES A ERROR
    // }

    // WHAT IF I WANT TO CALULATE
    function getResult() public view returns(uint256 product, uint256 total){

        //we cant update olny we can veiw
        uint256 product = Num1*Num2;
        uint256 total = Num1+Num2;

        return (product , total);
        
    }
}