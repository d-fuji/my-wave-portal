//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    uint256 totalBigWaves;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function bigWave() public {
        totalBigWaves += 1;
        console.log("%s HAS WAVED!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves", totalWaves);
        return totalWaves;
    }

    function getTotalBigWaves() public view returns (uint256) {
        console.log("WE HAVE %d TOTAL BIG WAVES", totalBigWaves);
        return totalWaves;
    }
}
