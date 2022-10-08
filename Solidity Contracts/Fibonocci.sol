// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Fibonacci {
 function fib(uint n) public pure returns(uint){

    if (n == 0){
        return 0;
              
    }
    else if(n == 1){
        
        return 1;

        }
    else if (n==2){
        return 1;
    }
    else{
        uint temp =1;
        uint f=1;
        uint sum=0;
        for(uint i = 2; i < n;i++){
            sum = temp +f;
            temp= f;
            f=sum;
        }
        return sum;

    }
 }

}
