pragma solidity ^0.6.0;

contract Lib{
    uint256 score;
    function changeScore(uint256 _score) external{
        score = _score;
    }
}

contract victim{
    address public lib;
    address public owner;
    uint256 public score;
    constructor(address _lib) public{
        lib = _lib;
        owner = msg.sender;
    }

    function changeScore(uint256 _score) public{
        lib.delegatecall(abi.encodeWithSignature("changeScore(uint256)" , _score));
    }
}


