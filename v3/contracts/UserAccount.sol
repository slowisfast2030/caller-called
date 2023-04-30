// SPDX-License-Identifier: MIT
pragma solidity ^0.5.13;

contract UserAccount {
  address public owner;

  constructor (address _owner) public{
    owner = _owner;
  }
}