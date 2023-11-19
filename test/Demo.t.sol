// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Main, OptionalWorker} from "../src/Demo.sol";

contract DemoTest is Test {
    Main private immutable main = new Main();
    address private immutable worker = address(new OptionalWorker());

    function test_doWork() external {
        main.doWork(worker);
        assertTrue(main.jobDone());
    }

    function test_totalWorked() external {
        main.doWork(worker);
        OptionalWorker w = OptionalWorker(worker);
        assertEq(w.totalWorked(), w.WORK_COUNT());
    }
}
