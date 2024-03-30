// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SimpleFuzz} from "../src/SimpleFuzz.sol";


contract EchidnaSimpleFuzz is SimpleFuzz {

    function echidna_invariant () public view returns (bool) {
        return (shouldAlwaysBeZero == 0);
    }

}