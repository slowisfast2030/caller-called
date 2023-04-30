// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import './UserAccount.sol';

contract AccountFactory {
  UserAccount public accountOwn;

  // 先执行
  function createAccount() public {
    accountOwn = new UserAccount(msg.sender);
  }

  // 后执行
  function getAccountOwner() public view returns (address) {
    return accountOwn.owner();
  }
}
