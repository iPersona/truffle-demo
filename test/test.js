/**
 * Created by iPersona on 2017/6/24.
 */

import { default as Web3} from 'web3';

var Test = artifacts.require("./Test.sol");

contract('Test', function() {
    it("should put 10000 MetaCoin in the first account", function () {
        return Test.deployed().then(function (instance) {
            var eth = web3.eth;
            var f0 = eth.filter(instance);
            var f1 = eth.filter(instance.Event);
            var f2 = eth.filter([instance.Event, instance.Event2]);
            var f3 = eth.filter(instance.Event, {'a': 69});
            var f4 = eth.filter(instance.Event, {'a': [69, 42]});

            var trigger;
            f4.watch(trigger);
            instance.foo(69);
            assert.equal(10000, 10000, "10000 wasn't in the first account");
        });
    });
});
