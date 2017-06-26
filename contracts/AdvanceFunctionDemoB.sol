pragma solidity ^0.4.0;

import "AdvanceFunctionDemoA.sol";

contract AdvanceFunctionDemoB {
    uint public value;

    //以`external`的方式调用另一合约中的函数
    function callExternal(AdvanceFunctionDemoA a) {
//        value = a.f();    // 声明为 internal 的函数，只能在合约内部调用，外部无法调用
        value = a.callInternally();
    }
}
