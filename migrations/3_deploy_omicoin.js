var ConvertLib = artifacts.require("./ConvertLib.sol");
var OmiCoin = artifacts.require("./OmiCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, OmiCoin);
  deployer.deploy(OmiCoin);
};
