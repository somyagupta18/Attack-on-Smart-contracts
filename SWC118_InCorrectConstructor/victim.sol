pragma solidity 0.4.24;
contract victimContract{
    address public owner;
    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }
    function Constructor() public {
        owner = msg.sender;
    }
      function withdraw() public onlyowner
    {
       owner.transfer(this.balance);
    }
}