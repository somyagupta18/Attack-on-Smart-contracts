pragma solidity ^0.7.0;

contract Victim {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        assert(balances[msg.sender] + msg.value > balances[msg.sender]);
        balances[msg.sender] += msg.value;
    }

    function refund() public {
        require(balances[msg.sender] >= balances[msg.sender] , "Insufficient Balance");
        msg.sender.transfer(balances[msg.sender]);
    }

    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
