// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{
// What is Modifier in Solidity? 
/*
    - Modifiers can be used if an automatic contition check is required before performing a certain function.
    
    - The function won't be performed if the specified contition is not met.

    - The _; symbol is known as Merge Wildcard and this is replaced by the function definition during execution.

    - The use of this sybol is required for all modifiers.
 */
    modifier modifier_name{
        // require(...)  modifier body 
        _;
    }

    address public owner;
    uint public myNumber;

    constructor(uint _myNumber){
        owner = msg.sender;
        myNumber = _myNumber;
    }

    modifier onlyOwnerOrAddress(address _allowedAddress){
        require(msg.sender == owner || msg.sender == _allowedAddress, "Only the owner or an allowed address can call this function.");
        _;
    }

    function changeNumber(uint _newNumber) public onlyOwnerOrAddress(address(0x4546)){
        myNumber = _newNumber;
    }
}
