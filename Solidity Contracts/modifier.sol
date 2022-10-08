//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Modifier {
   address public owner;

   constructor(){
        owner = msg.sender;
   }
   modifier onlyOwner(){
        require ( msg.sender == owner , "You are not owner");
        _;
   }

   modifier onlyEven(uint val){
        require ( val%2 == 0, "Value is odd");
        _;
   }

   function check(uint val) public view onlyOwner onlyEven(val) returns(uint){
        return val;
   } 
}
