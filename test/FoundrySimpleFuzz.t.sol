// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {SimpleFuzz} from "../src/SimpleFuzz.sol";

contract FoundrySimpleFuzz is Test {
    SimpleFuzz public simpleFuzz;

    function setUp() public {
        simpleFuzz = new SimpleFuzz();
        //targetContract(address(simpleFuzz));
    }

    function testSimpleDoStuff() public {
        simpleFuzz.doStuff(123);
        assert(simpleFuzz.shouldAlwaysBeZero() == 0);
    }

    // Stateless fuzzing
    function testFuzzDoStuff(uint256 x) public {
        simpleFuzz.doStuff(x);
        assert(simpleFuzz.shouldAlwaysBeZero() == 0);
    }
}


