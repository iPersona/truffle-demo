pragma solidity ^0.4.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AdvanceFunctionDemo.sol";

contract TestAdvanceFunctionDemo {
    function testF() {
        A a = A(DeployedAddresses.A());
        B b = B(DeployedAddresses.B());
        var valueExp = 1;
        b.callExternal(a);
        var valueAct = b.getValue();
        Assert.equal(valueExp, valueAct, "value not equal!");
    }
}
