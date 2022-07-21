// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    uint256 number;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public person;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 number_) public {
        number = number_;
    }

    function retrieve() public view returns(uint256) {
        return number;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // person.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        person.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
