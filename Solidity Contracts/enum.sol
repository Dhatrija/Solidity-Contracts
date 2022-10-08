// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {

     enum House{SMALL, MEDIUM,LARGE}

     House choice;

     function setLarge() public{
        choice = House.LARGE;
     }

     function getChoice() public view returns (House){
        return choice;
     } 
     
   function returnBlockNumber() public view returns(uint BlockNumber){
     return (block.number);
   }

   function returnBlockTimestamp() public view returns(uint Timestamp){
    return (block.timestamp);
   }
}
contract Parent {
  uint public v1;

  function increment() public{
    v1 = v1+1;
  }
}

contract Child is Parent {
    function decrement() public{
        v1 = v1-1;
    }
}

