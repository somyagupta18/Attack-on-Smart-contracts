pragma solidity ^0.6.0;
contract Wallet {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    function changeOwner(address newOwner) public {
        require(tx.origin == owner);
        owner = newOwner;
    }
}
