// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{
// What are Mappings?
/*
    - Mappings in Solidity are used to store key-value pairs, where the key can be any built-in data type
    and the calue can be any type.

    - They act like hash tables or dictionaries in other programming laguages. Reference types are no allowed as
    keys in mappings.
 */
    mapping (keyType => valueType) myMapping;



// Mappings can have different types of operations like in other programming laguages.

    mapping (address=> uint) public balances;
    
    balances[msg.sender] = 100; // adding
    
    uint myBalance = balances[msg.sender]; // Retrieving
    
    balances[msg.sender]+= 50;  // Updating

    delete balances[msg.sender] // Deleting



// Using struct Types with Mappings
/*
    - Mappings are generally used with struct types to probide a better programming experience.

    - With the addition of one or more parameters in the function declartion, modifiers with arguments are defined
    in the same way as standard modifiers.
 */


    struct Person{
        string name;
        uint age;
    }    

    mapping(address => Person) public people;

// Nested Mappings
/*
    A nested mapping is a maping where the value is another mapping. This allows for a multi-dimensional mapping,
    where each key maps to a set of keys and values.
 */

    mapping (address => mapping (uint => uint)) public balancess;

    function setBalance(address account, uint timestamp, uint amount) public {
        balancess[account][timestamp] = amount;
    }

    function getBalance(address account, uint timestamp) public view returns (uint){
        return balancess[account][timestamp];
    }

//-------------------------------------------------------------------------------------------------------------

    mapping (address => string) public names;

    function setName(string memory _name) public {
        names[msg.sender] = _name;
    }
    function getName() public view returns (string memory){
        return[msg.sender];
    }
}
