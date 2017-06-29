pragma solidity ^0.4.0;


contract StorageTypeConvertDemo {
    struct S {
        bytes32 a;
        uint b;
    }

    S s;

    function StorageTypeConvertDemo() {}

    function convertStorage(S storage s) internal {
        S tmp = s;
        tmp.a = "Test";
    }

    function callConvertStorage() returns (bytes32) {
        convertStorage(s);
        return s.a; // Test
    }
}
