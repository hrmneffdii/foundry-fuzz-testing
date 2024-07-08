// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {Fuzz} from "../src/Fuzz.sol";
import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

contract TestFuzz is Test {
    Fuzz fuzz = new Fuzz();

    function testFuzzNoRandom() public  {
        fuzz.f(10);
        assertEq(fuzz.alwaysZero() , 0);
    }

    // stateless fuzzing
    function testFuzzWithRandom(uint input_) public {
        fuzz.f(input_);
        assert(fuzz.alwaysZero() == 0);
    }
}
