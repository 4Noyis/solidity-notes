// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{
// What are Events in Solidity? 
/*
    - In Solidity, an event is a way to notify external parties about an accourence or state change within a smart
    contract. Events are defined within the contract code and are emitted when a specific condition is met.
    
    - When event is emitted, it generates a log entry in the transaction receipt, which can be read by external 
    applications and sed to trigger further actions.
 */

    event newTransaction(uint indexed transactionId, address indexed sender, address indexed recipient, uint amount);

    function transfer(address recipient, uint amount) public{
        //perform transfer logic
        require(amount >=400, "the amount is less tahn expected.");
        uint transactionId = 123;
        emit newTransaction(transactionId, msg.sender, recipient, amount);
    }
}
