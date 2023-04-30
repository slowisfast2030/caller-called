// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import './UserAccount.sol';

contract AccountFactory {
  mapping(address => bool) public accounts;
  

  function createAccount() public {
    address newAccount = address(new UserAccount(msg.sender));
    accounts[newAccount] = true;
  }
}
