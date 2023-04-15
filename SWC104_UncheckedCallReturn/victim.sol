pragma solidity ^0.6.7;

contract FailingRecipient {
    fallback () external payable {
        revert("Transaction intentionally failed");
    }
}

contract Lotto {

    bool public payedOut = false;
    address payable winner;
    uint public winAmount;

    constructor (uint _winAmount) public payable {
        winAmount = _winAmount;
        winner = payable(address(new FailingRecipient()));
    }
    function sendToWinner() public payable {
        require(!payedOut);
        winner.send(winAmount);
        payedOut = true;
    }

    function withdrawLeftOver() public payable {
        require(payedOut);
        msg.sender.send(address(this).balance);
    }
}