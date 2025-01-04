// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity  ^0.6.0;

import "contracts/SimpleStorage.sol";

// contract to deploy SimpleStorage contract
contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(); 
        // create an object of type SimpleStorage
        simpleStorageArray.push(simpleStorage);
        
    }
}