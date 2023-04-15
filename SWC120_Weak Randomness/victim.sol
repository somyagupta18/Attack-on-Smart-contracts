pragma solidity ^0.6.0;

contract GuessTheRandomNumberChallenge {
    address owner;
    uint answer;
    modifier onlyOwner(){
        require(msg.sender == owner, " You are not owner");
        _;
    }
    constructor () public payable{
        owner = msg.sender;
    }
    function GuessTheRandomNumber(uint _guess) public payable {
        require(msg.value == 1 ether);
        answer = uint(keccak256(abi.encodePacked(blockhash(block.number - 1), now)));
        if(_guess == answer)
        {
            (bool sent, ) = msg.sender.call{value : 2 ether}("");
            require(sent , "Failed to send the amount");
        }
    }

    function withdraw() public payable onlyOwner{
        (bool sent, ) = msg.sender.call{value : address(this).balance}("");
        require(sent , "Failed to send the amount");
    }
}