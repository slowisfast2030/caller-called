// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import './UserAccount.sol';

contract AccountFactory {
  address[] public accountLists;

  function createAccount () public {
    address newAccount = address(new UserAccount (msg.sender));
    accountLists.push(newAccount);

  }
}