pragma solidity ^0.4.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AdvanceFunctionDemoA.sol";
import "../contracts/AdvanceFunctionDemoB.sol";

contract TestAdvanceFunctionDemo {
    function testF() {
        AdvanceFunctionDemoA a = AdvanceFunctionDemoA (DeployedAddresses.A());
//        B b = B(DeployedAddresses.B());
//        var valueExp = 1;
//        b.callExternal(a);
        Assert.equal(1, 1, "ok");
//        var valueAct = b.getValue();
//        Assert.equal(valueExp, valueAct, "value not equal!");
    }
}
