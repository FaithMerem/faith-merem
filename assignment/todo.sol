// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract tech4dev{
    struct Micro{
        string Title;
        bool completed;
    }
    Micro [] public Tech;

    function insert (string memory title) public{
        Tech.push(Micro(title, false));
    }
    function update (uint index, string memory title) public{
        Tech[index].Title = title;
    } 
}