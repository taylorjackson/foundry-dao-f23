// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 number);

    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit NumberChanged(s_number);
    }

    function getNumber() public view returns (uint256) {
        return s_number;
    }

    function retrieve() public view returns (uint256) {
        return s_number;
    }
}
