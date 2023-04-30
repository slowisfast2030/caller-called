// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import './UserAccount.sol';

contract AccountFactory {
  UserAccount public accountOwn;

  function createAccount() public {
    accountOwn = new UserAccount(msg.sender);
  }
}
