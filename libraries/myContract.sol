// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "./myLibrary.sol";

contract exampleContract{
    uint[] myNumbers = [1, 2, 3, 4, 5];

    function doubleMyNumbers() public view returns (uint[] memory) {
        return myLibrary.double(myNumbers);
    }
}
 