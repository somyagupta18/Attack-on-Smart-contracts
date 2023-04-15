pragma solidity ^0.7.0;

contract Wallet {
    mapping(address => uint) balance;

    // Deposit funds in contract
    function deposit(uint amount) public payable {
        require(msg.value == amount, "msg.value must be equal to amount");
        balance[msg.sender] = amount;
    }

    // Withdraw funds from contract
    function withdraw(uint amount) public {
        require(amount <= balance[msg.sender], "amount must be less than balance");

        uint previousBalance = balance[msg.sender];
        balance[msg.sender] = previousBalance - amount;
        msg.sender.call{value:amount};
    }
}