pragma solidity ^0.4.0;


contract MemoryToMemoryDemo {
    struct S {
        bytes32 a;
        uint b;
    }

    function MemoryToMemoryDemo(){}

    //默认参数是memory
    function memoryToMemory(S s) internal{
        S memory tmp = s;

        //引用传递
        tmp.a = "other memory";
    }

    function callDemo() returns (bytes32){
        S memory mem = S("memory", 1);
        memoryToMemory(mem);
        return mem.a;//other memory
    }
}
