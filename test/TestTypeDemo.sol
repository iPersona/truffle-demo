pragma solidity ^0.4.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TypeDemo/StorageTypeConvertDemo.sol";
import "../contracts/TypeDemo/MemoryToStateVarDemo.sol";
import "../contracts/TypeDemo/StorageToMemoryDemo.sol";
import "../contracts/TypeDemo/MemoryToMemoryDemo.sol";

contract TestTypeDemo {
    function TestTypeDemo(){}

    function testStorageConvertDemo() {
        StorageTypeConvertDemo demo = StorageTypeConvertDemo(DeployedAddresses.StorageTypeConvertDemo());
//        var valueExp = "Test";  // 不能采用类型推断的方式，否则会被认为是string
        bytes32 valueExp = "Test";
        var valueAct = demo.callConvertStorage();
        Assert.equal(valueAct, valueExp, "value not equal!");
    }

    function testMemoryToStateVarDemo() {
        MemoryToStateVarDemo demo = MemoryToStateVarDemo(DeployedAddresses.MemoryToStateVarDemo());
        bytes32 valueExp = "memory";
        var valueAct = demo.callDemo();
        Assert.equal(valueAct, valueExp, "value not equal!");
    }

    function testStorageToMemoryDemo() {
        StorageToMemoryDemo demo = StorageToMemoryDemo(DeployedAddresses.StorageToMemoryDemo());
//        bytes32 valueExp = "Test";
        bytes32 valueExp = "storage";
        var valueAct = demo.callDemo();
        Assert.equal(valueAct, valueExp, "value not equal!");
    }

    function testMemoryToMemoryDemo() {
        MemoryToMemoryDemo demo = MemoryToMemoryDemo(DeployedAddresses.MemoryToMemoryDemo());
        bytes32 valueExp = "other memory";
        var valueAct = demo.callDemo();
        Assert.equal(valueAct, valueExp, "value not equal!");
    }
}
