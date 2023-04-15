pragma solidity ^0.6.0;

contract kingdom{
    address public king;
    uint public amount;

    constructor() public{
        king = address(0);
        amount = 0;
    }
    
    function claimKingdom() public payable{
        require(msg.value > amount , "More Amount needed");
        (bool sent , ) = king.call{value : amount}("");  // Denial Of service atatck , fails if the king is unable to receive ether
        require(sent , "Unable to send amount");        // Eg- Contract without a fallback
        king = msg.sender;
        amount = msg.value;
    }
}

// Once the attacker contract without a fallback function claims the ownership of kingdom then noone will be able to claim back the ownership because the attcker contract is unable to receive money
// To avoid this we must take a pull approack rather then push
// Let the external account pull the ether rather then pushing it inside a function to avoid DOS
