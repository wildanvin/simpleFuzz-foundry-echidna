//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleFuzz {

    uint256 public shouldAlwaysBeZero = 0;
    uint256 private hiddenValue = 0;

    function doStuff (uint256 data) public {
        // if (data == 1234){
        //     shouldAlwaysBeZero = 1;
        // }
        if (hiddenValue == 5678) {
            shouldAlwaysBeZero = 1;
        }
        hiddenValue = data;
    }
}