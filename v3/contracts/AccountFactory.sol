// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import './UserAccount.sol';

contract AccountFactory {
  address public accountOwner;

  function createAccount () public {
    address newAccount = address(new UserAccount (msg.sender));
    accountOwner = newAccount;
  }
}