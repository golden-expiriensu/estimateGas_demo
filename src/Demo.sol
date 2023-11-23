// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {console2} from "forge-std/Test.sol";

contract OptionalWorker {
    uint256[] private worked;
    uint256 public constant WORK_COUNT = 100;

    function totalWorked() external view returns (uint256) {
        return worked.length;
    }

    function doOptionalWork() external {
        for (uint256 i; i < WORK_COUNT; i++) {
            worked.push(i);
            console2.log("finished working on %s", i);
        }
    }
}

contract Main {
    bool public jobDone;

    function doWork(address optionalWorker) external {
        console2.log("gas before call: %s", gasleft());
        (bool success,) = optionalWorker.call(abi.encodeCall(OptionalWorker.doOptionalWork, ()));
        console2.log("success: %s", success);

        console2.log("gas after call: %s", gasleft());
        jobDone = true;
    }
}
