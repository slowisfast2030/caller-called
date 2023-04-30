// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

import './UserAccount.sol';

contract AccountFactory {
  address public accountOwn;

  function createAccount() public {
    address newAccount = address(new UserAccount(msg.sender));
    accountOwn = newAccount;
  }
}
