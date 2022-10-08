//SPDX-License-Identifier:UNLICENSED

pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
    function reverseArray(uint[] memory arr, uint len) public pure returns (uint[] memory)
    {
        uint256 temp;
        for (uint256 i = 0; i < len / 2; i++) {
            temp = arr[i];
            arr[i] = arr[len - i - 1];
            arr[len - i - 1] = temp;
        }
        return arr;
    }

   function reversArray(uint[] memory arr, uint l) public pure returns (uint[] memory) { 
      
      

      
        uint temp;
        for (uint i=0; i < l / 2 ; i++) {
             temp = arr[i];
             arr[i] = arr[l-i-1];
             arr[l-i-1] = temp;
        }
       return arr;
    }
}


