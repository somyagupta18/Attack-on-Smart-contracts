pragma solidity 0.8.0;

contract FindThisHash {
    bytes32 public constant hash =
        0x5064b09d713b0348f248cf83fedef649ecdc1121d0913a67adb84438d1cb8422; // "mypassword"

    constructor() payable {}

    function solve(string memory solution) public {
        require(hash == keccak256(abi.encodePacked(solution)), "Incorrect answer");

        (bool sent, ) = msg.sender.call{value: 0.001 ether}("");
        require(sent, "Failed to send Ether");
    }
}