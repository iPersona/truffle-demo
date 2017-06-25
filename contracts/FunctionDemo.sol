pragma solidity ^0.4.0;


contract FunctionDemo {
    function FunctionDemo(){
    }

    //交换传入值的顺序并返回
    function f(uint key, uint value) returns (uint, uint){
        return (value, key);
    }

    function g() returns (uint, uint){
        //任意顺序的通过变量名来指定参数值
        return f({value: 2, key: 1});//2,1
    }

    //使用`return`关键字指定返回值
    function output1(uint a, uint b) returns (uint r){
        return a + b;
    }

    //省略返回参数的变量名定义
    function output2(uint a, uint b) returns (uint){
        return a + b;
    }

    /*
    function output3(uint a, uint b) returns (uint x, uint mul){
        x = a + b;
        mul = a * b;
        //不能混合使用两种定义方式
        //使用`return`时要返回所有定义
        //Untitled3:18:9: Error: Different number of arguments in return statement than in returns declaration.
        return x;
    }
    */

    function output4(uint a, uint b) returns (uint mul){
        mul = a * b;
        //不能混合使用两种定义方式
        //使用`return`时要返回所有定义
        //Untitled3:18:9: Error: Different number of arguments in return statement than in returns declaration.
        // v0.4.1版本语法已经解决上述问题！
        return 1;//1
    }

}
