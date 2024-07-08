// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

contract Fuzz {
    uint256 public alwaysZero = 0;

    function f(uint256 input_) public {
        if(input_ == 7){
            alwaysZero = 1;
        }
        if(input_ % 3 == 0){
            alwaysZero = 1;
        }
    }
}