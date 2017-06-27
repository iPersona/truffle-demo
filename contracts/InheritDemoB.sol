pragma solidity ^0.4.0;

import "./InheritDemoA.sol";

contract InheritDemoB is InheritDemoA{

    function InheritDemoB() {

    }

    function callInternalFunc() returns (uint) {
        return internalFunc();
    }
}
