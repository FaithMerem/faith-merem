// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Piggybank{
    event Deposit (uint amount);
    event Withdraw (uint amount);
    address public owner = msg.sender;

    receive() external payable { 
        emit Deposit (msg.value);
    }
    function withdraw () public {
        require (msg.sender == owner, "You are not the owner");
        emit Withdraw (address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}