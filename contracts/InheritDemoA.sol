pragma solidity ^0.4.0;


contract InheritDemoA {
    uint value;

    function InheritDemoA() {
        value = 999;
    }

    function privateFunc() private returns (uint) {
        return value;
    }

    function internalFunc() internal returns (uint) {
        return value;
    }
}
