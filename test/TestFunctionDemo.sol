pragma solidity ^0.4.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/FunctionDemo.sol";

contract TestFunctionDemo {

    function testF() {
        // 构造函数必须至少有一个合约部署地址作为参数（这里为：DeployedAddresses.FunctionDemo()），即使合约本身没有显式的定义出来
        // /mnt/shared/truffle3/test/TestFunctionDemo.sol:10:29: : Exactly one argument expected for explicit type conversion.
        // FunctionDemo demo = FunctionDemo();
        //                     ^------------^
        FunctionDemo demo = FunctionDemo(DeployedAddresses.FunctionDemo());
        var (keyExp, valueExp) = (2, 1);
        var (keyAct, valueAct) = demo.f(1, 2);
        Assert.equal(keyAct, keyExp, "key is not swap yet!");
        Assert.equal(valueAct, valueExp, "value is not swap yet!");
    }

    function testG() {
        FunctionDemo demo = FunctionDemo(DeployedAddresses.FunctionDemo());
        var (keyExp, valueExp) = (2, 1);
        var (keyAct, valueAct) = demo.g();
        Assert.equal(keyAct, keyExp, "key is not swap yet!");
        Assert.equal(valueAct, valueExp, "value is not swap yet!");
    }

    function testOutput4() {
        FunctionDemo demo = FunctionDemo(DeployedAddresses.FunctionDemo());
        var except = 1;
        var result = demo.output4(2, 3);
        Assert.equal(result, except, "output4 result not equal!");
    }
}
