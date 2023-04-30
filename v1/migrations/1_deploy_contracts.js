const Called = artifacts.require("Called");
const Caller = artifacts.require("Caller");

module.exports = async (deployer) => {
  await deployer.deploy(Called);
  const calledInstance = await Called.deployed();
  await deployer.deploy(Caller, calledInstance.address);
};
