pragma solidity ^0.4.0;


contract StorageToMemoryDemo {
    struct S{bytes32 a;uint b;}

    S s = S("storage", 1);

    function StorageToMemoryDemo(){}

    function storageToMemory(S storage x) internal{
        S memory tmp = x;//由Storage拷贝到memory中

        //memory的修改不影响storage
        tmp.a = "Test";
    }

    function callDemo() returns (bytes32){
        storageToMemory(s);
        return s.a;
    }
}
