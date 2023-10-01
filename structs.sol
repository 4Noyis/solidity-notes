// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{

// What are Struct in Solidity? 
/*
    - In Solidity is a custom data type that allows you to define a complex data struture that can contain 
    multiple properties of different types.
    
    - Structs are similar to structs in C or OOP languages, and are foten used to define complex data models or 
    organize related data.
 */

// Struct with Arrays and Mappings
/*
    Struct can be used as elements in arrays or mappings, and prvide exaples of how to define and use arrays
    or mappings of structs. 
 */

    struct Person{
        string name;
        uint age;
    }

    Person[] people;
    mapping(uint =>Person) public peopleById;
    
//--------------------------------------------------------------------------------------------
    struct User{
        string name;
        uint age;
        address wallet;
    }

    User[] public users;

    function doOperations() external {
        User memory user1= User("Joe", 34, msg.sender);
        User memory user2= User({name: "Alice", age: 23, wallet: msg.sender});
        User memory user3;
        user3.name= "John";
        user3.age= 43;
        user3.wallet= msg.sender;

        users.push(user1);
        users.push(user2);
        users.push(user3);
    }

}
