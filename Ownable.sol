// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "now owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");

        owner = _newOwner;
    }
    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // Code.
    }
    function anyOneCanCall() external {
        // Code.
    }
}
