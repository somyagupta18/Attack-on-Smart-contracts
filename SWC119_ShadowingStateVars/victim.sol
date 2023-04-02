pragma solidity ^0.8.2;

import "./attacker.sol";

contract Victim {
    Shadowing public victim;
    address payable public attacker;

    constructor(address _victim) {
        victim = ShadowingInFunctions(_victim);
        attacker = payable(msg.sender);
    }

    function buy() public payable {
        victim.buyTicket();   
    }


}
