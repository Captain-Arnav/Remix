// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 simpleStorageIndex, uint256 simpleStorageNumber) public {
        // Address
        // ABI: Application Binary Interface
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[simpleStorageIndex]));
        simpleStorage.store(simpleStorageNumber);
        // or instead of 1st 2 lines: SimpleStorage(address(simpleStorageArray[simpleStorageIndex])).store(simpleStorageNumber);
    }

    function sfGet(uint256 simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[simpleStorageIndex]));
        return simpleStorage.retrieve();
        // or instead of 1st 2 lines: return SimpleStorage(address(simpleStorageArray[simpleStorageIndex])).retrieve();
    }
}
