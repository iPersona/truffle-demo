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

    // ==============================================================
    // ================================================ External Demo
    function externalFunc() external returns (uint) {
        return 2;
    }

    function callExternalFunc() returns (uint) {
        // 声明为external的方法不能被以internal的方式调用，
        // 即 externalFunc(); 这样的方式调用

        // 只能以this的方式调用
        return this.externalFunc();
    }

    // ==============================================================
    // ================================================ Public Demo
    function publicFunc() returns (uint) {
        return 3;
    }

    function callPublicFuncByInternal() returns (uint) {
        return publicFunc();
    }

    function callPublicFuncByExternal() returns (uint) {
        return this.publicFunc();
    }
}
