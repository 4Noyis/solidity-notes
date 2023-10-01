// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract exampleContract{
// What are Libraries in Solidity? 
/*
    - A library in solidity is a reusable piece of code that can be called by multiple smart contracts.
    
    - Libraries are similar to contracts, but they cannot be deployed on the blockchain independently.

    - Libraries ar edeplıyed once and theri code is reused by other contracts, which saves gas and improves efficiency.

    - Library functions can be called directly if they do not modify the state. That means pure or view functions
    only can be called from outside the library.

    - A library cannot be inherited.
 */

    library myMathLibrary {
        function add(uint a, uint b) public pure returns (uint)
        return a + b;
    }

    import "./myMathLibrary.sol";

    contract myContract{
        function testAdd(uint a, uint b) public view returns (uint){
            return myMathLibrary.add(a, b);
        }
    }
}
 