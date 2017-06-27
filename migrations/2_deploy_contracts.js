var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
// var Test = artifacts.require("./Test.sol");
var FunctionDemo = artifacts.require("./FunctionDemo.sol");
var AdvanceFunctionDemoA = artifacts.require("./AdvanceFunctionDemoA.sol");
var AdvanceFunctionDemoB = artifacts.require("./AdvanceFunctionDemoB.sol");
var InheritDemoA = artifacts.require("./InheritDemoA.sol");
var InheritDemoB = artifacts.require("./InheritDemoB.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
  // deployer.deploy(Test);
  deployer.deploy(FunctionDemo);
  deployer.deploy(AdvanceFunctionDemoA);
  deployer.deploy(AdvanceFunctionDemoB);
  deployer.deploy(InheritDemoA);
  deployer.deploy(InheritDemoB);
};
