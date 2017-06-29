pragma solidity ^0.4.0;


contract MemoryToStateVarDemo {
    struct S {
        bytes32 a;
        uint b;
    }

    // 默认是storage的
    S s;

    function MemoryToStateVarDemo(){}

    function memoryToState(S memory tmp) internal {
        s = tmp;    // 从内存中'复制'到状态变量中
        tmp.a = "Test"; // 这是两份拷贝，修改其中的一个并不会影响到另外一个
    }

    function callDemo() returns (bytes32) {
        // 默认局部变量是storage的，这里需要强制声明为memory才能达到demo的效果
        S memory tmp = S("memory", 2);
        memoryToState(tmp);

        return s.a;
    }
}
