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

/**
先执行后确实会生成UserAccount的一个实例。
可以通过这个实例调用owner方法。

new方法究竟有没有部署新的合约呢？
为啥在ganache上看不到新部署的合约呢？
 */