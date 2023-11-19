// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Main, OptionalWorker} from "../src/Demo.sol";

contract CounterScript is Script {
    function run() public {
        vm.startBroadcast();

        new Main();
        new OptionalWorker();

        vm.stopBroadcast();
    }
}
