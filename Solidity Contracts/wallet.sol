// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Wallet {
address payable[] public accounts;
address payable owner;
constructor( address _own){
    owner = payable(_own);
    accounts.push(payable(owner));
}

function deposit() public payable{

}
function sendEther(address  _payee,uint amt) public payable{
   require( owner == msg.sender, "sender is not allowed");
    payable(_payee).transfer(amt);
}

function balanceOf() public view returns(uint){
    return address(this).balance;
}


}
