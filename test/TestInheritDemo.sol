pragma solidity ^0.4.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/InheritDemoB.sol";

contract TestInheritDemo {
    function testInternalCall() {
        InheritDemoB b = InheritDemoB(DeployedAddresses.InheritDemoB());
        var valueExp = 999;
        var valueAct = b.callInternalFunc();
        Assert.equal(valueAct, valueExp, "value not equal");
    }
}
