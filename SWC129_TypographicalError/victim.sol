pragma solidity ^0.7.0;
// import "hardhat/console.sol";

contract Victim {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        // if(balances[msg.sender] + msg.value < balances[msg.sender])
        //     console.log("error lessgo");
        assert(balances[msg.sender] + msg.value > balances[msg.sender]);
        balances[msg.sender] += msg.value;
    }

    function refund(uint256 _amount) public {
        require(balances[msg.sender] >= _amount , "Insufficient Balance");
        balances[msg.sender] =- _amount;
        msg.sender.transfer(_amount);
    }
}
