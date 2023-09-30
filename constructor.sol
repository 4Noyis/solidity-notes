// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{
// What is Constructor in Solidity?
/*
    - A constructor is a special function that is executed when a contract is created.
    - The purpose of the constructor is to initialize the state of the contract, by setting the initial values
    of the state variables or by performing any other necessary setup
 */
 
 constructor (inputParameterType inputParameterName, ...) visibilityFunctionType{

 }

// Key Characteristics of Constructors 
/*
    - Executed Only Once: Constructor are special funcitons that are executed only once, when a contract is first
    created
    
    - Initialize State Variables: The primary purpose of a constructor is to initialize the state variables of a
    contract, by setting their initial values or performing any other necessary setup.
    
    - Input Parameters: Constructors can take input parameters, which are used to pass data into the constructor and
    and can be used to customize the behavior of the constructor.
    
    - Visibility Modifiers: Consturcotrs can have visivility modifiers which determine whether the constructor can be
    called from outside the contract and whether it can modify the state of the contract.

 */

    address public owner;
    string public name;
    uint public age;

    // when you deploy the contract it wants you to input name and age variable then it defines name and age.
    constructor(string memory _name, uint _age){
        owner = msg.sender;
        name= _name;
        age= _age;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    function changeName(string memory _newName) public onlyOwner{
        name= _newName;
    }
}
