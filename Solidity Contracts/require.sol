//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Require {
    function checkInput(uint input) public pure returns (string memory){
        require (input >= 0 && input <=255 , "Not Within Range");
        return "Within Range";
    }
}

contract Day3 {
mapping( address => uint )public balance;
 function updateBalance( uint _bal) public{
    balance[msg.sender] = _bal;
}

function checkBalance(address user) public view returns (uint) {
    require(msg.sender == user , "You are not the owner of the account");
    return  balance[user];
}

}
