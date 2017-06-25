var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
// var Test = artifacts.require("./Test.sol");
var FunctionDemo = artifacts.require("./FunctionDemo.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
  // deployer.deploy(Test);
  deployer.deploy(FunctionDemo);
};
