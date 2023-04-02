pragma solidity 0.8.2;

contract Shadowing {
    uint t = 1;
    uint public win = 0;
    mapping(address => uint256) public balances;
    mapping(uint256 => address) public ticket;

    function buyTicket() public {
        balances[msg.sender] += 10;
        ticket[t] = payable(msg.sender);
        t+=1;
    }

    function winner() public returns (uint t) {
        win = random()*t;// it seems like we're multiplying number of players to the random number so as to accomodate any number of particpants
        return win/5+1;//winner will always be the 1st index since t=0 is used in above statement
    }

    function random() internal returns (uint) {
        return uint(keccak256(abi.encodePacked(msg.sender, block.timestamp))) % 5;
    }
}
