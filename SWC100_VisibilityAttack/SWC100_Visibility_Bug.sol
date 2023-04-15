pragma solidity ^0.4.0;

contract Visibility_victim{
    mapping(address => uint) public balances;
    address owner;
    constructor() public{
        owner = msg.sender;
    }
    function addBalance( uint256 _addBalance , address sender){// this function should have been private but by default it is public
        balances[sender] += _addBalance;
    }

    function deposit(uint256 _depositBalance) public payable{
        require(msg.value == _depositBalance);
        addBalance(_depositBalance , msg.sender);
    }
} 