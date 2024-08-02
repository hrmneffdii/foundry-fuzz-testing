// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {Test} from "lib/forge-std/src/Test.sol";
import {StatefulFuzzCatches} from "../src/statefullFuzzCatches.sol";

contract StatelessFuzz is Test {
    StatefulFuzzCatches sfc;

    function setUp() public {
        sfc = new StatefulFuzzCatches();
    }

    function test_doMoreMathAgain(uint128 randomNumber) public {
        assert(sfc.doMoreMathAgain(randomNumber) != 0);
    }
}