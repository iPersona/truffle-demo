pragma solidity ^0.4.0;


contract A {
    function A(){

    }
    function f() internal returns (uint) {
        return 1;
    }

    function callInternally() returns (uint){
        return f();
    }

    //以`external`的方式调用
    //f()只能以`internal`的方式调用
    //Untitled3:7:9: Error: Member "f" not found or not visible after argument-dependent lookup in contract A
    function callExternally(){
        //this.f();
    }
}

contract B {
    uint value;

    //以`external`的方式调用另一合约中的函数
    function callExternal(A a) {
//        value = a.f();    // 声明为 internal 的函数，只能在合约内部调用，外部无法调用
        value = a.callInternally();
    }

    function getValue() returns (uint) {
        return value;
    }
}
