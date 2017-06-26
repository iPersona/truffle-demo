pragma solidity ^0.4.0;

contract AdvanceFunctionDemoA {
    function AdvanceFunctionDemoA(){

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
    function callExternally() {
        //this.f();
    }
}
