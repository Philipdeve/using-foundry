// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }// setUp is initialization logic. it prevents me from instantiating the counter contract in each test function

    // when testing functions, all functions should be prefixed with test and they must be public or external

    function testInc() public {
        counter.inc();
        assertEq(counter.count(), 1);
    }

    function testFailDec() public {
        counter.inc();
    }

    // function testDecUnderflow() public {
    //     vm.expectRevert(arithmeticError);
    //     counter.dec();
    // }
}
