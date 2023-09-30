// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{
// State Variables
/* 
    State variables are variables that are declared outside of any functions in a Solidity contract. They are
    part of the contrect's state and can be accessed and modified by any function in the contract
*/
    uint256 public myStateVariable;


// local Variables
/* 
    Local Variables, on the other hand, are variables that are declared inside a function and are only visivle within
    that funciton
*/
    function doSomething(uint256 input) public pure returns (uint256){
        uint256 result = input ^2;
        return result;
    }

// Global Variables 
/*
    Global variables are a special type of variable in SOlidity that are avilable to all contract and functions.
    
    They are typically used to provide inforation about the environment in which the cotnract is executing.

    For example, the block.number gloavl variable return the current block number.
    and the ms.sender global return the address of the current message.
*/

    function getSender() public view returns (address){
        return msg.sender;
    }

/*--------------------------------------------------------------------------- */
    // this functian get a integer from user and add it to localuint and returns sum.
    function add(uint a) public pure returns(uint){
        uint localUnit=10;
        return a+localUnit;
    }
}
