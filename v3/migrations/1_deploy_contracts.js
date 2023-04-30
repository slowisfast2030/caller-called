const AccountFactory = artifacts.require("AccountFactory");

module.exports = async (deployer) => {
  await deployer.deploy(AccountFactory);
}