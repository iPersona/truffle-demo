pragma solidity ^0.4.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AdvanceFunctionDemoA.sol";
import "../contracts/AdvanceFunctionDemoB.sol";

contract TestAdvanceFunctionDemo {
    function testF() {
        AdvanceFunctionDemoA a = AdvanceFunctionDemoA (DeployedAddresses.AdvanceFunctionDemoA());
        AdvanceFunctionDemoB b = AdvanceFunctionDemoB (DeployedAddresses.AdvanceFunctionDemoB());
        var valueExp = 1;
        b.callExternal(a);
//        Assert.equal(1, 1, "ok");
        var valueAct = b.getValue();
        Assert.equal(valueExp, valueAct, "value not equal!");
    }

    function testExternalFunc() {
        AdvanceFunctionDemoA a = AdvanceFunctionDemoA (DeployedAddresses.AdvanceFunctionDemoA());
        var valueExp = 2;
        var valueAct = a.callExternalFunc();
        Assert.equal(valueExp, valueAct, "value is not equal!");
    }

     function testPublicFunc() {
        AdvanceFunctionDemoA a = AdvanceFunctionDemoA (DeployedAddresses.AdvanceFunctionDemoA());
        var valueExp = 3;
        var valueAct = a.callPublicFuncByInternal();
        Assert.equal(valueExp, valueAct, "value is not equal!");
        valueAct = a.callPublicFuncByExternal();
        Assert.equal(valueExp, valueAct, "value is not equal!");
    }

}
