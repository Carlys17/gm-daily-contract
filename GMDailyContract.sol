// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GMDailyContract {
    mapping(address => uint256) public gmCount;
    mapping(address => uint256) public lastGmTimestamp;
    event GM(address indexed sender, uint256 count);

    function sendGM() public {
        require(block.timestamp - lastGmTimestamp[msg.sender] >= 1 days, "Can only GM once per day");
        gmCount[msg.sender] += 1;
        lastGmTimestamp[msg.sender] = block.timestamp;
        emit GM(msg.sender, gmCount[msg.sender]);
    }

    function getGMCount(address user) public view returns (uint256) {
        return gmCount[user];
    }
}
