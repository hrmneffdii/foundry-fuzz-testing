// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {StatelessFuzzCatches} from "../src/statelessFuzzCatches.sol";
import {Test} from "lib/forge-std/src/Test.sol";

contract StatelessFuzzCatchesTest is Test {
    StatelessFuzzCatches sfc;

    function setUp() public {
        sfc = new StatelessFuzzCatches();
    }

    function test_doMath(uint128 randomNumber) public view {
        assert(sfc.doMath(randomNumber) != 0);
    }
}
