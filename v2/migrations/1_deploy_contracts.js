const Called = artifacts.require("Called");
const Caller = artifacts.require("Caller");
const Link = artifacts.require("Link");

module.exports = async (deployer) => {
  await deployer.deploy(Called);
  await deployer.deploy(Caller);
  await deployer.deploy(Link);
};

/*
v1版本也是合约a调用合约b的函数。
但合约b的地址是在部署合约a的时候传入的，这样就需要在部署合约a的时候知道合约b的地址。
也就是要求部署a的时候，合约b已经部署好了。

v2版本对部署合约的顺序没有要求。
新引入的Link合约是为了完成合约a和合约b的链接。
这样以后部署合约的时候，可以分两部:
1.先把所有合约部署，不管顺序
2.再初始化合约之间的链接关系（主要是一些storage address）
*/