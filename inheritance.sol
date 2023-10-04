// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// What are Inheritance in Solidity? 
/*
    In solidity, inheritance allows you to create a new contract by derivinf functionality from one or more 
    existing contracts.
 */

 contract country{
    string name;
    string population;
    string capitalCity;
 }
 contract Turkiye is country{
    string cuisine;
 }

 contract England is country{
    string king;
 }


// Multi-level Inheritance
/*
    - In multi-level inheritance, a derived contract is created by inheriting from a parent contract that has already
    
    - inheritad from another contract. This allows you to create a hierarchy of contracts, where each derived contract
    adds new functionality to the inherited contracts.
 */

 contract A{
    function foo() public pure returns (string memory){
        return "A";
    }
 }
 contract B is A{
    function bar() public pure returns (string memory){
        return "B";
    }
 }
 contract C is B{
    function baz() public pure returns (string memory){
        return "C";
    }
 }

 // Hierarchical Inheritance 
 /*
    In hierarchical inheritance, multiple derived contract inherit from a single parent contract. This creates a
    tree-like structure where each derived contract shares the same base functionality from the parent contract.
  */

// Multiple Inheritance
/*
    In multiple inheritance, adrived contract is created by inheriting from multiple parent contracts. This allows
    you to combine the functionality of multiple contract into a single derived contract.
 */

  contract X{
    function foo() public pure returns (string memory){
        return "X";
    }
 }
 contract Y{
    function bar() public pure returns (string memory){
        return "Y";
    }
 }
 contract Z is X,Y {
    function baz() public pure returns (string memory){
        return "Z";
    }
 }

 /*-------------------------------------------------------------------------------------------------------------- */

contract Parent{
    uint public parentData;

    constructor(uint _parentData){
        parentData = _parentData;
    }
}

contract Child is Parent {
    uint public childData;

    constructor(uint _parentData, uint _childData) Parent(_parentData){
        childData = _childData;
    }
}