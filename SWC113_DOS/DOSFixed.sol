pragma solidity ^0.6.0;

contract kingdom{
    address public king;
    uint public amount;
    mapping(address => uint) balances;

    constructor() public{
        king = address(0);
        amount = 0;
    }
    
    function claimKingdom() public payable{
        require(msg.value > amount , "More Amount needed");
        // (bool sent , ) = king.call{value : amount}("");  // Denial Of service atatck , fails if the king is unable to receive ether
        // require(sent , "Unable to send amount");        // Eg- Contract without a fallback
        balances[king] += amount;
        king = msg.sender;
        amount = msg.value;
    }

    function withdraw() public{
        require( msg.sender!=king , "King cannot withdraw");
        require( balances[msg.sender] > 0, "Insufficient balance");
        uint a = balances[msg.sender];
        balances[msg.sender] = 0;
        (bool sent , ) = msg.sender.call{value : a}("");
        require(sent , "Withdraw failed") ;    
    }
}