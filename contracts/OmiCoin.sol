pragma solidity ^0.4.2;

contract OmiCoin {
    uint public balance;

    function OmiCoin() {
        // constructor
        balance = 1000;
    }

    function deposit(uint _value) payable returns (uint _newValue) {
        balance += _value;
        return balance; 
    }
}