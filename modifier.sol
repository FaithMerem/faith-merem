// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Tech4dev{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyowner(){
        require(msg.sender == owner, "You are not the owner big head");
        _;
    }
    function setowner(address _newOwner) public onlyowner{
        require (_newOwner != address (0), "invalid owner");
        owner = _newOwner;
    }
    function onlyownercancall () public onlyowner{

    }
    function anyonecancall () public {
        
    }
}