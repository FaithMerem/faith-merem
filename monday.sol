// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract faith{
    uint [] public number = [100,200,300];
    function pushnumber () public {
        number.push(400);
    }
    function update () public{
        number[1] = 44;
    }
    function remove () public{
        delete number [2];
    }
}