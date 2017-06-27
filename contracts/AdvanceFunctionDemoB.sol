pragma solidity ^0.4.0;

// 导入合约一定要以 "./" 打头，没有的话就会出现下面的错误
/*
    ➜  truffle-demo git:(develop) truffle compile
    Compiling ./contracts/AdvanceFunctionDemoA.sol...
    Compiling ./contracts/AdvanceFunctionDemoB.sol...
    Compiling AdvanceFunctionDemoA.sol...

    Invalid input source specified.
    Compiliation failed. See above.
*/
import "./AdvanceFunctionDemoA.sol";

contract AdvanceFunctionDemoB {
    uint value;

    //以`external`的方式调用另一合约中的函数
    function callExternal(AdvanceFunctionDemoA a) {
//        value = a.f();    // 声明为 internal 的函数，只能在合约内部调用，外部无法调用
        value = a.callInternally();
    }

    function getValue() returns (uint) {
        return value;
    }
}
