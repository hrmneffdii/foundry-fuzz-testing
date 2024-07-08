// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {Fuzz} from "../src/Fuzz.sol";
import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract TestFuzzStateFull is StdInvariant, Test{
    Fuzz fuzz;

    function setUp() public {
        fuzz = new Fuzz();
        targetContract(address(fuzz));
    }

    function invariant_testStatefull() public view {
        assert(fuzz.alwaysZero() == 0);
    }
}