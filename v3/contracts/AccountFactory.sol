// SPDX-License-Identifier: MIT
pragma solidity ^0.5.13;

import './UserAccount.sol';

contract AccountFactory {
  address[] public accounts;

  function createAccount () public {
    address newAccount = address(new UserAccount (msg.sender));
    accounts.push(newAccount);
  }
}