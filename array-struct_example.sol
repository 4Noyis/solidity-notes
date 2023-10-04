// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // dynmaic array
    Person[] public listOfPeople;

    function addPerson(uint256 _favoriteNumber, string memory _name) public{
        Person memory newPerson= Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
        // samething
        listOfPeople.push(Person(_favoriteNumber, _name));
    
    }
}